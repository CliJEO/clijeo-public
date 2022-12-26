import 'dart:developer';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/thread_respond_from/thread_respond_form_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ThreadRespondFormController extends ChangeNotifier {
  ThreadRespondFormState state = const ThreadRespondFormState.stable();

  void updateStableStateBody(String? updatedBody) => state = state.maybeMap(
      stable: (value) => value.copyWith(body: updatedBody),
      orElse: () =>
          const ThreadRespondFormState.error("State Error: Invalid state"));

  Future<void> replyInThread(int queryId) async {
    await state.maybeWhen(stable: (body) async {
      state = const ThreadRespondFormState.loading();
      notifyListeners();

      try {
        await DioBase.dioInstance.post(ApiUtils.replyQueryUrl(queryId),
            options: Options(
              headers: {
                'Authorization': 'Bearer ${BackendAuth.getToken()}',
              },
            ),
            data: {"content": body});
        log("COMPLETED");
      } on DioError catch (e) {
        state = ThreadRespondFormState.error("Dio Error: ${e.response}");
        print("Dio Error: ${e.response}");
        notifyListeners();
      } on Error catch (e) {
        state = ThreadRespondFormState.error("Error: ${e.toString()}");
        notifyListeners();
      }
    }, orElse: () {
      state = const ThreadRespondFormState.error("State Error: Invalid state");
    });
  }
}
