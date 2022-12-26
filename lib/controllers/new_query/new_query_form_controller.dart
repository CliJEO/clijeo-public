import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/new_query/new_query_form_state.dart';
import 'package:dio/dio.dart';
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
    await state.maybeWhen(stable: (subject, body) async {
      state = const NewQueryFormState.loading();
      notifyListeners();

      try {
        final formData = FormData.fromMap({"title": subject, "content": body});
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
}
