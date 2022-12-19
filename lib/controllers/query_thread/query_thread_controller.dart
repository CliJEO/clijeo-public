import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/query_thread/query_thread_state.dart';
import 'package:clijeo_public/models/query/query.dart';
import 'package:clijeo_public/models/query/query_response/query_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class QueryThreadController extends ChangeNotifier {
  QueryThreadState state = const QueryThreadState.loading();

  static bool isAdminResponse(QueryResponse queryResponse) =>
      queryResponse.admin != null;

  Future<void> getQueryDetails(int queryId) async {
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
      state = QueryThreadState.stable(query: query);
      notifyListeners();
    } on DioError catch (e) {
      state = QueryThreadState.error("Dio Error: ${e.response}");
    } on Error catch (e) {
      state = QueryThreadState.error("Error: ${e.toString()}");
    }
    notifyListeners();
  }

  static String getDatetimeString(String datetime) {
    final dateObj = DateTime.parse(datetime);
    return "${dateObj.day}/${dateObj.month}/${dateObj.year} ${dateObj.hour}:${dateObj.minute}";
  }
}
