import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_settings_form_state.freezed.dart';

@freezed
abstract class EditSettingsFormState with _$EditSettingsFormState {
  const factory EditSettingsFormState.stable(
      {required String name,
      int? age,
      required String gender,
      required String language,
      String? phoneNumber,
      String? location}) = _EditSettingsFormStable;
  const factory EditSettingsFormState.loading() = _EditSettingsFormLoading;
  const factory EditSettingsFormState.error(String error) =
      _EditSettingsFormError;
}
