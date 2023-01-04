import 'dart:developer';
import 'dart:io';

import 'package:clijeo_public/config.dart';
import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/file/file_controller.dart';
import 'package:clijeo_public/controllers/query_thread/query_thread_state.dart';
import 'package:clijeo_public/models/attachments/local_attachments.dart';
import 'package:clijeo_public/models/query/query.dart';
import 'package:clijeo_public/models/query/query_response/query_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';

class QueryThreadController extends ChangeNotifier {
  QueryThreadState state = const QueryThreadState.initial();
  int queryId;

  QueryThreadController({required this.queryId});

  static String getResponderName(QueryResponse queryResponse) =>
      queryResponse.admin == null ? "You" : "Admin";

  Future<void> getQueryDetails() async {
    try {
      final result = await DioBase.dioInstance.get(
        ApiUtils.getQueryDetailsUrl(queryId),
        options: Options(
          headers: {
            'Authorization': 'Bearer ${BackendAuth.getToken()}',
          },
        ),
      );
      final query = Query.fromJson(result.data);
      state = QueryThreadState.stable(
          query: query,
          voiceAttachments: [],
          otherAttachments: [],
          isLoadingAttachments: true);
      notifyListeners();

      final attachments = await _loadAttachments(query);
      state = QueryThreadState.stable(
          query: query,
          voiceAttachments: attachments["audio"]!,
          otherAttachments: attachments["other"]!,
          isLoadingAttachments: false);
    } on DioError catch (e) {
      state = QueryThreadState.error("Dio Error: ${e.response}");
      log("Error: ${e.message}");
    } on Error catch (e) {
      state = QueryThreadState.error("Error: ${e.toString()}");
      log("Error: ${e.toString()}");
    }
    notifyListeners();
  }

  Future<Map<String, List<LocalAttachments>>> _loadAttachments(
      Query query) async {
    Map<String, List<LocalAttachments>> attachments = {
      "audio": [],
      "other": []
    };

    Directory directory = await getApplicationDocumentsDirectory();

    for (var element in query.media) {
      try {
        if (FileController.isAudioFile(element.filename)) {
          String filepath = "${directory.path}/${element.filename}";
          File file = File(filepath);

          if (!file.existsSync()) {
            final result = await DioBase.dioInstance.get(
              ApiUtils.mediaUrl(element.filename),
              // onReceiveProgress: showDownloadProgress,
              //Received data with List<int>
              options: Options(headers: {
                'Authorization': 'Bearer ${BackendAuth.getToken()}',
              }, responseType: ResponseType.bytes),
            );

            file.writeAsBytesSync(result.data);
          }

          attachments["audio"]!.add(
              LocalAttachments(filename: element.filename, path: filepath));
        } else {
          attachments["other"]!.add(LocalAttachments(
              filename: element.filename,
              path: ClijeoConfig.backendBaseUrl +
                  ApiUtils.mediaUrl(element.filename)));
        }
      } on DioError catch (e) {
        log(e.message);
      } on Error catch (e) {
        log("NORMAL ERROR: ${e.toString()}");
      }
    }
    return attachments;
  }

  static String getDatetimeString(String datetime) {
    final dateObj = DateTime.parse(datetime).toLocal();
    return "${dateObj.day}/${dateObj.month}/${dateObj.year} ${dateObj.hour}:${dateObj.minute}";
  }

  static Function(int) getDownloadAttachmentFunction(
      List<LocalAttachments> attachments) {
    Future<void> downloadAttachmentFunction(int index) async {
      if (index < attachments.length) {
        Directory directory = await getApplicationDocumentsDirectory();
        String filepath =
            "${directory.path}/${attachments[index].path.split("/").last}";
        File file = File(filepath);
        if (!file.existsSync()) {
          final result = await DioBase.dioInstance.get(
            attachments[index].path,
            // onReceiveProgress: showDownloadProgress,
            //Received data with List<int>
            options: Options(headers: {
              'Authorization': 'Bearer ${BackendAuth.getToken()}',
            }, responseType: ResponseType.bytes),
          );

          file.writeAsBytesSync(result.data);
          log("WRITE COMPLETED");
        }
        await OpenFile.open(filepath);
      }
    }

    return downloadAttachmentFunction;
  }
}
