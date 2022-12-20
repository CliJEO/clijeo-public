// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thread_respond_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThreadRespondFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body)? stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThreadRespondFormStable value) stable,
    required TResult Function(_ThreadRespondFormLoading value) loading,
    required TResult Function(_ThreadRespondFormError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThreadRespondFormStable value)? stable,
    TResult? Function(_ThreadRespondFormLoading value)? loading,
    TResult? Function(_ThreadRespondFormError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThreadRespondFormStable value)? stable,
    TResult Function(_ThreadRespondFormLoading value)? loading,
    TResult Function(_ThreadRespondFormError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadRespondFormStateCopyWith<$Res> {
  factory $ThreadRespondFormStateCopyWith(ThreadRespondFormState value,
          $Res Function(ThreadRespondFormState) then) =
      _$ThreadRespondFormStateCopyWithImpl<$Res, ThreadRespondFormState>;
}

/// @nodoc
class _$ThreadRespondFormStateCopyWithImpl<$Res,
        $Val extends ThreadRespondFormState>
    implements $ThreadRespondFormStateCopyWith<$Res> {
  _$ThreadRespondFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ThreadRespondFormStableCopyWith<$Res> {
  factory _$$_ThreadRespondFormStableCopyWith(_$_ThreadRespondFormStable value,
          $Res Function(_$_ThreadRespondFormStable) then) =
      __$$_ThreadRespondFormStableCopyWithImpl<$Res>;
  @useResult
  $Res call({String? body});
}

/// @nodoc
class __$$_ThreadRespondFormStableCopyWithImpl<$Res>
    extends _$ThreadRespondFormStateCopyWithImpl<$Res,
        _$_ThreadRespondFormStable>
    implements _$$_ThreadRespondFormStableCopyWith<$Res> {
  __$$_ThreadRespondFormStableCopyWithImpl(_$_ThreadRespondFormStable _value,
      $Res Function(_$_ThreadRespondFormStable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$_ThreadRespondFormStable(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ThreadRespondFormStable implements _ThreadRespondFormStable {
  const _$_ThreadRespondFormStable({this.body});

  @override
  final String? body;

  @override
  String toString() {
    return 'ThreadRespondFormState.stable(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThreadRespondFormStable &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThreadRespondFormStableCopyWith<_$_ThreadRespondFormStable>
      get copyWith =>
          __$$_ThreadRespondFormStableCopyWithImpl<_$_ThreadRespondFormStable>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return stable(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return stable?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body)? stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThreadRespondFormStable value) stable,
    required TResult Function(_ThreadRespondFormLoading value) loading,
    required TResult Function(_ThreadRespondFormError value) error,
  }) {
    return stable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThreadRespondFormStable value)? stable,
    TResult? Function(_ThreadRespondFormLoading value)? loading,
    TResult? Function(_ThreadRespondFormError value)? error,
  }) {
    return stable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThreadRespondFormStable value)? stable,
    TResult Function(_ThreadRespondFormLoading value)? loading,
    TResult Function(_ThreadRespondFormError value)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(this);
    }
    return orElse();
  }
}

abstract class _ThreadRespondFormStable implements ThreadRespondFormState {
  const factory _ThreadRespondFormStable({final String? body}) =
      _$_ThreadRespondFormStable;

  String? get body;
  @JsonKey(ignore: true)
  _$$_ThreadRespondFormStableCopyWith<_$_ThreadRespondFormStable>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ThreadRespondFormLoadingCopyWith<$Res> {
  factory _$$_ThreadRespondFormLoadingCopyWith(
          _$_ThreadRespondFormLoading value,
          $Res Function(_$_ThreadRespondFormLoading) then) =
      __$$_ThreadRespondFormLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ThreadRespondFormLoadingCopyWithImpl<$Res>
    extends _$ThreadRespondFormStateCopyWithImpl<$Res,
        _$_ThreadRespondFormLoading>
    implements _$$_ThreadRespondFormLoadingCopyWith<$Res> {
  __$$_ThreadRespondFormLoadingCopyWithImpl(_$_ThreadRespondFormLoading _value,
      $Res Function(_$_ThreadRespondFormLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ThreadRespondFormLoading implements _ThreadRespondFormLoading {
  const _$_ThreadRespondFormLoading();

  @override
  String toString() {
    return 'ThreadRespondFormState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThreadRespondFormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body)? stable,
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
    required TResult Function(_ThreadRespondFormStable value) stable,
    required TResult Function(_ThreadRespondFormLoading value) loading,
    required TResult Function(_ThreadRespondFormError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThreadRespondFormStable value)? stable,
    TResult? Function(_ThreadRespondFormLoading value)? loading,
    TResult? Function(_ThreadRespondFormError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThreadRespondFormStable value)? stable,
    TResult Function(_ThreadRespondFormLoading value)? loading,
    TResult Function(_ThreadRespondFormError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ThreadRespondFormLoading implements ThreadRespondFormState {
  const factory _ThreadRespondFormLoading() = _$_ThreadRespondFormLoading;
}

/// @nodoc
abstract class _$$_ThreadRespondFormErrorCopyWith<$Res> {
  factory _$$_ThreadRespondFormErrorCopyWith(_$_ThreadRespondFormError value,
          $Res Function(_$_ThreadRespondFormError) then) =
      __$$_ThreadRespondFormErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ThreadRespondFormErrorCopyWithImpl<$Res>
    extends _$ThreadRespondFormStateCopyWithImpl<$Res,
        _$_ThreadRespondFormError>
    implements _$$_ThreadRespondFormErrorCopyWith<$Res> {
  __$$_ThreadRespondFormErrorCopyWithImpl(_$_ThreadRespondFormError _value,
      $Res Function(_$_ThreadRespondFormError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ThreadRespondFormError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ThreadRespondFormError implements _ThreadRespondFormError {
  const _$_ThreadRespondFormError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ThreadRespondFormState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThreadRespondFormError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThreadRespondFormErrorCopyWith<_$_ThreadRespondFormError> get copyWith =>
      __$$_ThreadRespondFormErrorCopyWithImpl<_$_ThreadRespondFormError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body)? stable,
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
    required TResult Function(_ThreadRespondFormStable value) stable,
    required TResult Function(_ThreadRespondFormLoading value) loading,
    required TResult Function(_ThreadRespondFormError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThreadRespondFormStable value)? stable,
    TResult? Function(_ThreadRespondFormLoading value)? loading,
    TResult? Function(_ThreadRespondFormError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThreadRespondFormStable value)? stable,
    TResult Function(_ThreadRespondFormLoading value)? loading,
    TResult Function(_ThreadRespondFormError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ThreadRespondFormError implements ThreadRespondFormState {
  const factory _ThreadRespondFormError(final String error) =
      _$_ThreadRespondFormError;

  String get error;
  @JsonKey(ignore: true)
  _$$_ThreadRespondFormErrorCopyWith<_$_ThreadRespondFormError> get copyWith =>
      throw _privateConstructorUsedError;
}
