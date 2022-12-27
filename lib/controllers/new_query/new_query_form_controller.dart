import 'dart:developer';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/attachments/attachments.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/new_query/new_query_form_state.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class NewQueryFormController extends ChangeNotifier {
  NewQueryFormState state = const NewQueryFormState.stable();

  void updateStableStateSubject(String? updatedSubject) =>
      state = state.maybeMap(
          stable: (value) => value.copyWith(subject: updatedSubject),
          orElse: () =>
              const NewQueryFormState.error("State Error: Invalid state"));

  void updateStableStateBody(String? updatedBody) => state = state.maybeMap(
      stable: (value) => value.copyWith(body: updatedBody),
      orElse: () =>
          const NewQueryFormState.error("State Error: Invalid state"));

  Future<void> registerQuery() async {
    await state.maybeWhen(stable: (subject, body, otherAttachments) async {
      state = const NewQueryFormState.loading();
      notifyListeners();

      try {
        final formData = FormData.fromMap({"title": subject, "content": body});

        if (otherAttachments != null) {
          formData.files.addAll(otherAttachments.map((e) => MapEntry(
              "files", MultipartFile.fromFileSync(e.path, filename: e.name))));
        }

        await DioBase.dioInstance.post(ApiUtils.createQueryUrl,
            options: Options(
              headers: {
                'Authorization': 'Bearer ${BackendAuth.getToken()}',
              },
            ),
            data: formData);
      } on DioError catch (e) {
        state = NewQueryFormState.error("Dio Error: ${e.response}");
        print("Dio Error: ${e.response}");
        notifyListeners();
      } on Error catch (e) {
        state = NewQueryFormState.error("Error: ${e.toString()}");
        notifyListeners();
      }
    }, orElse: () {
      state = const NewQueryFormState.error("State Error: Invalid state");
    });
  }

  void addFilesToOtherAttachments() async {
    // opens storage to pick multiple files
    // details of picked files are stored in the result object
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);

    // if no file is picked
    if (result == null) return;

    //TODO: ADD ATTACHMENT SIZE MAX LIMIT

    // remove all files without a path
    result.files.retainWhere((element) => element.path != null);

    // obtain Attachment objects from the result object
    List<Attachments> newOtherAttachments = result.files
        .map((e) => Attachments(name: e.name, path: e.path!))
        .toList();

    // update state with attachments
    state = state.maybeMap(
        stable: (value) {
          List<Attachments> otherAttachments = [];
          if (value.otherAttachments != null) {
            otherAttachments.addAll(value.otherAttachments!);
          }
          otherAttachments.addAll(newOtherAttachments);
          otherAttachments.forEach((element) {
            log(element.name);
          });

          return value.copyWith(otherAttachments: otherAttachments);
        },
        orElse: () => state);

    notifyListeners();
  }

  void removeFileFromOtherAttachments(int index) {
    state = state.maybeMap(
        stable: (value) {
          if (value.otherAttachments != null &&
              index < value.otherAttachments!.length) {
            List<Attachments> otherAttachments = [];
            otherAttachments.addAll(value.otherAttachments!);
            otherAttachments.removeAt(index);
            return value.copyWith(otherAttachments: otherAttachments);
          }
          return state;
        },
        orElse: () => state);
    notifyListeners();
  }
}
