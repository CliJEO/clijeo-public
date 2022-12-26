import 'package:freezed_annotation/freezed_annotation.dart';

part 'thread_respond_form_state.freezed.dart';

@freezed
abstract class ThreadRespondFormState with _$ThreadRespondFormState {
  const factory ThreadRespondFormState.stable({String? body}) =
      _ThreadRespondFormStable;
  const factory ThreadRespondFormState.loading() = _ThreadRespondFormLoading;
  const factory ThreadRespondFormState.error(String error) =
      _ThreadRespondFormError;
}
