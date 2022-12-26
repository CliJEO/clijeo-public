// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_settings_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditSettingsFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String gender,
            String language, String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String gender, String language,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String gender, String language,
            String? phoneNumber, String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditSettingsFormStable value) stable,
    required TResult Function(_EditSettingsFormLoading value) loading,
    required TResult Function(_EditSettingsFormError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditSettingsFormStable value)? stable,
    TResult? Function(_EditSettingsFormLoading value)? loading,
    TResult? Function(_EditSettingsFormError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditSettingsFormStable value)? stable,
    TResult Function(_EditSettingsFormLoading value)? loading,
    TResult Function(_EditSettingsFormError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSettingsFormStateCopyWith<$Res> {
  factory $EditSettingsFormStateCopyWith(EditSettingsFormState value,
          $Res Function(EditSettingsFormState) then) =
      _$EditSettingsFormStateCopyWithImpl<$Res, EditSettingsFormState>;
}

/// @nodoc
class _$EditSettingsFormStateCopyWithImpl<$Res,
        $Val extends EditSettingsFormState>
    implements $EditSettingsFormStateCopyWith<$Res> {
  _$EditSettingsFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EditSettingsFormStableCopyWith<$Res> {
  factory _$$_EditSettingsFormStableCopyWith(_$_EditSettingsFormStable value,
          $Res Function(_$_EditSettingsFormStable) then) =
      __$$_EditSettingsFormStableCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      int? age,
      String gender,
      String language,
      String? phoneNumber,
      String? location});
}

/// @nodoc
class __$$_EditSettingsFormStableCopyWithImpl<$Res>
    extends _$EditSettingsFormStateCopyWithImpl<$Res, _$_EditSettingsFormStable>
    implements _$$_EditSettingsFormStableCopyWith<$Res> {
  __$$_EditSettingsFormStableCopyWithImpl(_$_EditSettingsFormStable _value,
      $Res Function(_$_EditSettingsFormStable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = freezed,
    Object? gender = null,
    Object? language = null,
    Object? phoneNumber = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_EditSettingsFormStable(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EditSettingsFormStable implements _EditSettingsFormStable {
  const _$_EditSettingsFormStable(
      {required this.name,
      this.age,
      required this.gender,
      required this.language,
      this.phoneNumber,
      this.location});

  @override
  final String name;
  @override
  final int? age;
  @override
  final String gender;
  @override
  final String language;
  @override
  final String? phoneNumber;
  @override
  final String? location;

  @override
  String toString() {
    return 'EditSettingsFormState.stable(name: $name, age: $age, gender: $gender, language: $language, phoneNumber: $phoneNumber, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditSettingsFormStable &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, age, gender, language, phoneNumber, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditSettingsFormStableCopyWith<_$_EditSettingsFormStable> get copyWith =>
      __$$_EditSettingsFormStableCopyWithImpl<_$_EditSettingsFormStable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String gender,
            String language, String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return stable(name, age, gender, language, phoneNumber, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String gender, String language,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return stable?.call(name, age, gender, language, phoneNumber, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String gender, String language,
            String? phoneNumber, String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(name, age, gender, language, phoneNumber, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditSettingsFormStable value) stable,
    required TResult Function(_EditSettingsFormLoading value) loading,
    required TResult Function(_EditSettingsFormError value) error,
  }) {
    return stable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditSettingsFormStable value)? stable,
    TResult? Function(_EditSettingsFormLoading value)? loading,
    TResult? Function(_EditSettingsFormError value)? error,
  }) {
    return stable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditSettingsFormStable value)? stable,
    TResult Function(_EditSettingsFormLoading value)? loading,
    TResult Function(_EditSettingsFormError value)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(this);
    }
    return orElse();
  }
}

abstract class _EditSettingsFormStable implements EditSettingsFormState {
  const factory _EditSettingsFormStable(
      {required final String name,
      final int? age,
      required final String gender,
      required final String language,
      final String? phoneNumber,
      final String? location}) = _$_EditSettingsFormStable;

  String get name;
  int? get age;
  String get gender;
  String get language;
  String? get phoneNumber;
  String? get location;
  @JsonKey(ignore: true)
  _$$_EditSettingsFormStableCopyWith<_$_EditSettingsFormStable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditSettingsFormLoadingCopyWith<$Res> {
  factory _$$_EditSettingsFormLoadingCopyWith(_$_EditSettingsFormLoading value,
          $Res Function(_$_EditSettingsFormLoading) then) =
      __$$_EditSettingsFormLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditSettingsFormLoadingCopyWithImpl<$Res>
    extends _$EditSettingsFormStateCopyWithImpl<$Res,
        _$_EditSettingsFormLoading>
    implements _$$_EditSettingsFormLoadingCopyWith<$Res> {
  __$$_EditSettingsFormLoadingCopyWithImpl(_$_EditSettingsFormLoading _value,
      $Res Function(_$_EditSettingsFormLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EditSettingsFormLoading implements _EditSettingsFormLoading {
  const _$_EditSettingsFormLoading();

  @override
  String toString() {
    return 'EditSettingsFormState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditSettingsFormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String gender,
            String language, String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String gender, String language,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String gender, String language,
            String? phoneNumber, String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditSettingsFormStable value) stable,
    required TResult Function(_EditSettingsFormLoading value) loading,
    required TResult Function(_EditSettingsFormError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditSettingsFormStable value)? stable,
    TResult? Function(_EditSettingsFormLoading value)? loading,
    TResult? Function(_EditSettingsFormError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditSettingsFormStable value)? stable,
    TResult Function(_EditSettingsFormLoading value)? loading,
    TResult Function(_EditSettingsFormError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _EditSettingsFormLoading implements EditSettingsFormState {
  const factory _EditSettingsFormLoading() = _$_EditSettingsFormLoading;
}

/// @nodoc
abstract class _$$_EditSettingsFormErrorCopyWith<$Res> {
  factory _$$_EditSettingsFormErrorCopyWith(_$_EditSettingsFormError value,
          $Res Function(_$_EditSettingsFormError) then) =
      __$$_EditSettingsFormErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_EditSettingsFormErrorCopyWithImpl<$Res>
    extends _$EditSettingsFormStateCopyWithImpl<$Res, _$_EditSettingsFormError>
    implements _$$_EditSettingsFormErrorCopyWith<$Res> {
  __$$_EditSettingsFormErrorCopyWithImpl(_$_EditSettingsFormError _value,
      $Res Function(_$_EditSettingsFormError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_EditSettingsFormError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditSettingsFormError implements _EditSettingsFormError {
  const _$_EditSettingsFormError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'EditSettingsFormState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditSettingsFormError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditSettingsFormErrorCopyWith<_$_EditSettingsFormError> get copyWith =>
      __$$_EditSettingsFormErrorCopyWithImpl<_$_EditSettingsFormError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String gender,
            String language, String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String gender, String language,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String gender, String language,
            String? phoneNumber, String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditSettingsFormStable value) stable,
    required TResult Function(_EditSettingsFormLoading value) loading,
    required TResult Function(_EditSettingsFormError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditSettingsFormStable value)? stable,
    TResult? Function(_EditSettingsFormLoading value)? loading,
    TResult? Function(_EditSettingsFormError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditSettingsFormStable value)? stable,
    TResult Function(_EditSettingsFormLoading value)? loading,
    TResult Function(_EditSettingsFormError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EditSettingsFormError implements EditSettingsFormState {
  const factory _EditSettingsFormError(final String error) =
      _$_EditSettingsFormError;

  String get error;
  @JsonKey(ignore: true)
  _$$_EditSettingsFormErrorCopyWith<_$_EditSettingsFormError> get copyWith =>
      throw _privateConstructorUsedError;
}
