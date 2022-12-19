// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_login_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirstLoginFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstLoginFormStable value) stable,
    required TResult Function(_FirstLoginFormLoading value) loading,
    required TResult Function(_FirstLoginFormError value) error,
    required TResult Function(_FirstLoginFormCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstLoginFormStable value)? stable,
    TResult? Function(_FirstLoginFormLoading value)? loading,
    TResult? Function(_FirstLoginFormError value)? error,
    TResult? Function(_FirstLoginFormCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstLoginFormStable value)? stable,
    TResult Function(_FirstLoginFormLoading value)? loading,
    TResult Function(_FirstLoginFormError value)? error,
    TResult Function(_FirstLoginFormCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstLoginFormStateCopyWith<$Res> {
  factory $FirstLoginFormStateCopyWith(
          FirstLoginFormState value, $Res Function(FirstLoginFormState) then) =
      _$FirstLoginFormStateCopyWithImpl<$Res, FirstLoginFormState>;
}

/// @nodoc
class _$FirstLoginFormStateCopyWithImpl<$Res, $Val extends FirstLoginFormState>
    implements $FirstLoginFormStateCopyWith<$Res> {
  _$FirstLoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FirstLoginFormStableCopyWith<$Res> {
  factory _$$_FirstLoginFormStableCopyWith(_$_FirstLoginFormStable value,
          $Res Function(_$_FirstLoginFormStable) then) =
      __$$_FirstLoginFormStableCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location});
}

/// @nodoc
class __$$_FirstLoginFormStableCopyWithImpl<$Res>
    extends _$FirstLoginFormStateCopyWithImpl<$Res, _$_FirstLoginFormStable>
    implements _$$_FirstLoginFormStableCopyWith<$Res> {
  __$$_FirstLoginFormStableCopyWithImpl(_$_FirstLoginFormStable _value,
      $Res Function(_$_FirstLoginFormStable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_FirstLoginFormStable(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_FirstLoginFormStable implements _FirstLoginFormStable {
  const _$_FirstLoginFormStable(
      {required this.name,
      this.age,
      this.gender,
      this.phoneNumber,
      this.location});

  @override
  final String name;
  @override
  final int? age;
  @override
  final String? gender;
  @override
  final String? phoneNumber;
  @override
  final String? location;

  @override
  String toString() {
    return 'FirstLoginFormState.stable(name: $name, age: $age, gender: $gender, phoneNumber: $phoneNumber, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstLoginFormStable &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, age, gender, phoneNumber, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstLoginFormStableCopyWith<_$_FirstLoginFormStable> get copyWith =>
      __$$_FirstLoginFormStableCopyWithImpl<_$_FirstLoginFormStable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() completed,
  }) {
    return stable(name, age, gender, phoneNumber, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? completed,
  }) {
    return stable?.call(name, age, gender, phoneNumber, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(name, age, gender, phoneNumber, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstLoginFormStable value) stable,
    required TResult Function(_FirstLoginFormLoading value) loading,
    required TResult Function(_FirstLoginFormError value) error,
    required TResult Function(_FirstLoginFormCompleted value) completed,
  }) {
    return stable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstLoginFormStable value)? stable,
    TResult? Function(_FirstLoginFormLoading value)? loading,
    TResult? Function(_FirstLoginFormError value)? error,
    TResult? Function(_FirstLoginFormCompleted value)? completed,
  }) {
    return stable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstLoginFormStable value)? stable,
    TResult Function(_FirstLoginFormLoading value)? loading,
    TResult Function(_FirstLoginFormError value)? error,
    TResult Function(_FirstLoginFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(this);
    }
    return orElse();
  }
}

abstract class _FirstLoginFormStable implements FirstLoginFormState {
  const factory _FirstLoginFormStable(
      {required final String name,
      final int? age,
      final String? gender,
      final String? phoneNumber,
      final String? location}) = _$_FirstLoginFormStable;

  String get name;
  int? get age;
  String? get gender;
  String? get phoneNumber;
  String? get location;
  @JsonKey(ignore: true)
  _$$_FirstLoginFormStableCopyWith<_$_FirstLoginFormStable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FirstLoginFormLoadingCopyWith<$Res> {
  factory _$$_FirstLoginFormLoadingCopyWith(_$_FirstLoginFormLoading value,
          $Res Function(_$_FirstLoginFormLoading) then) =
      __$$_FirstLoginFormLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FirstLoginFormLoadingCopyWithImpl<$Res>
    extends _$FirstLoginFormStateCopyWithImpl<$Res, _$_FirstLoginFormLoading>
    implements _$$_FirstLoginFormLoadingCopyWith<$Res> {
  __$$_FirstLoginFormLoadingCopyWithImpl(_$_FirstLoginFormLoading _value,
      $Res Function(_$_FirstLoginFormLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FirstLoginFormLoading implements _FirstLoginFormLoading {
  const _$_FirstLoginFormLoading();

  @override
  String toString() {
    return 'FirstLoginFormState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FirstLoginFormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() completed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? completed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? completed,
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
    required TResult Function(_FirstLoginFormStable value) stable,
    required TResult Function(_FirstLoginFormLoading value) loading,
    required TResult Function(_FirstLoginFormError value) error,
    required TResult Function(_FirstLoginFormCompleted value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstLoginFormStable value)? stable,
    TResult? Function(_FirstLoginFormLoading value)? loading,
    TResult? Function(_FirstLoginFormError value)? error,
    TResult? Function(_FirstLoginFormCompleted value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstLoginFormStable value)? stable,
    TResult Function(_FirstLoginFormLoading value)? loading,
    TResult Function(_FirstLoginFormError value)? error,
    TResult Function(_FirstLoginFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FirstLoginFormLoading implements FirstLoginFormState {
  const factory _FirstLoginFormLoading() = _$_FirstLoginFormLoading;
}

/// @nodoc
abstract class _$$_FirstLoginFormErrorCopyWith<$Res> {
  factory _$$_FirstLoginFormErrorCopyWith(_$_FirstLoginFormError value,
          $Res Function(_$_FirstLoginFormError) then) =
      __$$_FirstLoginFormErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_FirstLoginFormErrorCopyWithImpl<$Res>
    extends _$FirstLoginFormStateCopyWithImpl<$Res, _$_FirstLoginFormError>
    implements _$$_FirstLoginFormErrorCopyWith<$Res> {
  __$$_FirstLoginFormErrorCopyWithImpl(_$_FirstLoginFormError _value,
      $Res Function(_$_FirstLoginFormError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FirstLoginFormError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirstLoginFormError implements _FirstLoginFormError {
  const _$_FirstLoginFormError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FirstLoginFormState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstLoginFormError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstLoginFormErrorCopyWith<_$_FirstLoginFormError> get copyWith =>
      __$$_FirstLoginFormErrorCopyWithImpl<_$_FirstLoginFormError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() completed,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? completed,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? completed,
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
    required TResult Function(_FirstLoginFormStable value) stable,
    required TResult Function(_FirstLoginFormLoading value) loading,
    required TResult Function(_FirstLoginFormError value) error,
    required TResult Function(_FirstLoginFormCompleted value) completed,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstLoginFormStable value)? stable,
    TResult? Function(_FirstLoginFormLoading value)? loading,
    TResult? Function(_FirstLoginFormError value)? error,
    TResult? Function(_FirstLoginFormCompleted value)? completed,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstLoginFormStable value)? stable,
    TResult Function(_FirstLoginFormLoading value)? loading,
    TResult Function(_FirstLoginFormError value)? error,
    TResult Function(_FirstLoginFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FirstLoginFormError implements FirstLoginFormState {
  const factory _FirstLoginFormError(final String error) =
      _$_FirstLoginFormError;

  String get error;
  @JsonKey(ignore: true)
  _$$_FirstLoginFormErrorCopyWith<_$_FirstLoginFormError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FirstLoginFormCompletedCopyWith<$Res> {
  factory _$$_FirstLoginFormCompletedCopyWith(_$_FirstLoginFormCompleted value,
          $Res Function(_$_FirstLoginFormCompleted) then) =
      __$$_FirstLoginFormCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FirstLoginFormCompletedCopyWithImpl<$Res>
    extends _$FirstLoginFormStateCopyWithImpl<$Res, _$_FirstLoginFormCompleted>
    implements _$$_FirstLoginFormCompletedCopyWith<$Res> {
  __$$_FirstLoginFormCompletedCopyWithImpl(_$_FirstLoginFormCompleted _value,
      $Res Function(_$_FirstLoginFormCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FirstLoginFormCompleted implements _FirstLoginFormCompleted {
  const _$_FirstLoginFormCompleted();

  @override
  String toString() {
    return 'FirstLoginFormState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstLoginFormCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)
        stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)?
        stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)?
        stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstLoginFormStable value) stable,
    required TResult Function(_FirstLoginFormLoading value) loading,
    required TResult Function(_FirstLoginFormError value) error,
    required TResult Function(_FirstLoginFormCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstLoginFormStable value)? stable,
    TResult? Function(_FirstLoginFormLoading value)? loading,
    TResult? Function(_FirstLoginFormError value)? error,
    TResult? Function(_FirstLoginFormCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstLoginFormStable value)? stable,
    TResult Function(_FirstLoginFormLoading value)? loading,
    TResult Function(_FirstLoginFormError value)? error,
    TResult Function(_FirstLoginFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _FirstLoginFormCompleted implements FirstLoginFormState {
  const factory _FirstLoginFormCompleted() = _$_FirstLoginFormCompleted;
}
