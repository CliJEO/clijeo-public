import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_login_form_state.freezed.dart';

@freezed
abstract class FirstLoginFormState with _$FirstLoginFormState {
  const factory FirstLoginFormState.stable(
      {required String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location}) = _FirstLoginFormStable;
  const factory FirstLoginFormState.loading() = _FirstLoginFormLoading;
  const factory FirstLoginFormState.error(String error) = _FirstLoginFormError;
  const factory FirstLoginFormState.completed() = _FirstLoginFormCompleted;
}
