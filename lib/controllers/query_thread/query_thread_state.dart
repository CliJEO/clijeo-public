import 'package:clijeo_public/models/attachments/local_attachments.dart';
import 'package:clijeo_public/models/query/query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_thread_state.freezed.dart';

@freezed
abstract class QueryThreadState with _$QueryThreadState {
  const factory QueryThreadState.initial() = _QueryThreadInitial;
  const factory QueryThreadState.stable(
      {required Query query,
      required bool isLoadingAttachments,
      required List<LocalAttachments> voiceAttachments,
      required List<LocalAttachments> otherAttachments}) = _QueryThreadStable;
  const factory QueryThreadState.loading() = _QueryThreadLoading;
  const factory QueryThreadState.error(String error) = _QueryThreadError;
}
