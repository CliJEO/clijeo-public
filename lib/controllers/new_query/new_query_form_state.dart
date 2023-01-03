import 'package:clijeo_public/models/attachments/local_attachments.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_query_form_state.freezed.dart';

@freezed
abstract class NewQueryFormState with _$NewQueryFormState {
  const factory NewQueryFormState.stable(
      {String? subject,
      String? body,
      String? voiceAttachmentPath,
      List<LocalAttachments>? otherAttachments,
      String? voiceAttachmentError,
      String? otherAttachmentError,
      String? registerQueryError}) = _NewQueryFormStable;
  const factory NewQueryFormState.loading() = _NewQueryFormLoading;
  const factory NewQueryFormState.completed() = _NewQueryFormCompleted;
}
