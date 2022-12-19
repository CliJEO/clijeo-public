// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_query_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewQueryFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? subject, String? body) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? subject, String? body)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? subject, String? body)? stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewQueryFormStable value) stable,
    required TResult Function(_NewQueryFormLoading value) loading,
    required TResult Function(_NewQueryFormError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewQueryFormStable value)? stable,
    TResult? Function(_NewQueryFormLoading value)? loading,
    TResult? Function(_NewQueryFormError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewQueryFormStable value)? stable,
    TResult Function(_NewQueryFormLoading value)? loading,
    TResult Function(_NewQueryFormError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewQueryFormStateCopyWith<$Res> {
  factory $NewQueryFormStateCopyWith(
          NewQueryFormState value, $Res Function(NewQueryFormState) then) =
      _$NewQueryFormStateCopyWithImpl<$Res, NewQueryFormState>;
}

/// @nodoc
class _$NewQueryFormStateCopyWithImpl<$Res, $Val extends NewQueryFormState>
    implements $NewQueryFormStateCopyWith<$Res> {
  _$NewQueryFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NewQueryFormStableCopyWith<$Res> {
  factory _$$_NewQueryFormStableCopyWith(_$_NewQueryFormStable value,
          $Res Function(_$_NewQueryFormStable) then) =
      __$$_NewQueryFormStableCopyWithImpl<$Res>;
  @useResult
  $Res call({String? subject, String? body});
}

/// @nodoc
class __$$_NewQueryFormStableCopyWithImpl<$Res>
    extends _$NewQueryFormStateCopyWithImpl<$Res, _$_NewQueryFormStable>
    implements _$$_NewQueryFormStableCopyWith<$Res> {
  __$$_NewQueryFormStableCopyWithImpl(
      _$_NewQueryFormStable _value, $Res Function(_$_NewQueryFormStable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_NewQueryFormStable(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewQueryFormStable implements _NewQueryFormStable {
  const _$_NewQueryFormStable({this.subject, this.body});

  @override
  final String? subject;
  @override
  final String? body;

  @override
  String toString() {
    return 'NewQueryFormState.stable(subject: $subject, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewQueryFormStable &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewQueryFormStableCopyWith<_$_NewQueryFormStable> get copyWith =>
      __$$_NewQueryFormStableCopyWithImpl<_$_NewQueryFormStable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? subject, String? body) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return stable(subject, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? subject, String? body)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return stable?.call(subject, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? subject, String? body)? stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(subject, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewQueryFormStable value) stable,
    required TResult Function(_NewQueryFormLoading value) loading,
    required TResult Function(_NewQueryFormError value) error,
  }) {
    return stable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewQueryFormStable value)? stable,
    TResult? Function(_NewQueryFormLoading value)? loading,
    TResult? Function(_NewQueryFormError value)? error,
  }) {
    return stable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewQueryFormStable value)? stable,
    TResult Function(_NewQueryFormLoading value)? loading,
    TResult Function(_NewQueryFormError value)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(this);
    }
    return orElse();
  }
}

abstract class _NewQueryFormStable implements NewQueryFormState {
  const factory _NewQueryFormStable(
      {final String? subject, final String? body}) = _$_NewQueryFormStable;

  String? get subject;
  String? get body;
  @JsonKey(ignore: true)
  _$$_NewQueryFormStableCopyWith<_$_NewQueryFormStable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewQueryFormLoadingCopyWith<$Res> {
  factory _$$_NewQueryFormLoadingCopyWith(_$_NewQueryFormLoading value,
          $Res Function(_$_NewQueryFormLoading) then) =
      __$$_NewQueryFormLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewQueryFormLoadingCopyWithImpl<$Res>
    extends _$NewQueryFormStateCopyWithImpl<$Res, _$_NewQueryFormLoading>
    implements _$$_NewQueryFormLoadingCopyWith<$Res> {
  __$$_NewQueryFormLoadingCopyWithImpl(_$_NewQueryFormLoading _value,
      $Res Function(_$_NewQueryFormLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewQueryFormLoading implements _NewQueryFormLoading {
  const _$_NewQueryFormLoading();

  @override
  String toString() {
    return 'NewQueryFormState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewQueryFormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? subject, String? body) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? subject, String? body)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? subject, String? body)? stable,
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
    required TResult Function(_NewQueryFormStable value) stable,
    required TResult Function(_NewQueryFormLoading value) loading,
    required TResult Function(_NewQueryFormError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewQueryFormStable value)? stable,
    TResult? Function(_NewQueryFormLoading value)? loading,
    TResult? Function(_NewQueryFormError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewQueryFormStable value)? stable,
    TResult Function(_NewQueryFormLoading value)? loading,
    TResult Function(_NewQueryFormError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NewQueryFormLoading implements NewQueryFormState {
  const factory _NewQueryFormLoading() = _$_NewQueryFormLoading;
}

/// @nodoc
abstract class _$$_NewQueryFormErrorCopyWith<$Res> {
  factory _$$_NewQueryFormErrorCopyWith(_$_NewQueryFormError value,
          $Res Function(_$_NewQueryFormError) then) =
      __$$_NewQueryFormErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_NewQueryFormErrorCopyWithImpl<$Res>
    extends _$NewQueryFormStateCopyWithImpl<$Res, _$_NewQueryFormError>
    implements _$$_NewQueryFormErrorCopyWith<$Res> {
  __$$_NewQueryFormErrorCopyWithImpl(
      _$_NewQueryFormError _value, $Res Function(_$_NewQueryFormError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_NewQueryFormError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewQueryFormError implements _NewQueryFormError {
  const _$_NewQueryFormError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'NewQueryFormState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewQueryFormError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewQueryFormErrorCopyWith<_$_NewQueryFormError> get copyWith =>
      __$$_NewQueryFormErrorCopyWithImpl<_$_NewQueryFormError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? subject, String? body) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? subject, String? body)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? subject, String? body)? stable,
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
    required TResult Function(_NewQueryFormStable value) stable,
    required TResult Function(_NewQueryFormLoading value) loading,
    required TResult Function(_NewQueryFormError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewQueryFormStable value)? stable,
    TResult? Function(_NewQueryFormLoading value)? loading,
    TResult? Function(_NewQueryFormError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewQueryFormStable value)? stable,
    TResult Function(_NewQueryFormLoading value)? loading,
    TResult Function(_NewQueryFormError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NewQueryFormError implements NewQueryFormState {
  const factory _NewQueryFormError(final String error) = _$_NewQueryFormError;

  String get error;
  @JsonKey(ignore: true)
  _$$_NewQueryFormErrorCopyWith<_$_NewQueryFormError> get copyWith =>
      throw _privateConstructorUsedError;
}
