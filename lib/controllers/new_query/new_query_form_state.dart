import 'package:clijeo_public/controllers/core/attachments/attachments.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_query_form_state.freezed.dart';

@freezed
abstract class NewQueryFormState with _$NewQueryFormState {
  const factory NewQueryFormState.stable(
      {String? subject,
      String? body,
      List<Attachments>? otherAttachments}) = _NewQueryFormStable;
  const factory NewQueryFormState.loading() = _NewQueryFormLoading;
  const factory NewQueryFormState.error(String error) = _NewQueryFormError;
}
