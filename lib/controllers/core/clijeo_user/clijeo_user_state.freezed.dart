// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clijeo_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClijeoUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClijeoUser user) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClijeoUser user)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClijeoUser user)? stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClijeoUserStable value) stable,
    required TResult Function(_ClijeoUserLoading value) loading,
    required TResult Function(_ClijeoUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClijeoUserStable value)? stable,
    TResult? Function(_ClijeoUserLoading value)? loading,
    TResult? Function(_ClijeoUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClijeoUserStable value)? stable,
    TResult Function(_ClijeoUserLoading value)? loading,
    TResult Function(_ClijeoUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClijeoUserStateCopyWith<$Res> {
  factory $ClijeoUserStateCopyWith(
          ClijeoUserState value, $Res Function(ClijeoUserState) then) =
      _$ClijeoUserStateCopyWithImpl<$Res, ClijeoUserState>;
}

/// @nodoc
class _$ClijeoUserStateCopyWithImpl<$Res, $Val extends ClijeoUserState>
    implements $ClijeoUserStateCopyWith<$Res> {
  _$ClijeoUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClijeoUserStableCopyWith<$Res> {
  factory _$$_ClijeoUserStableCopyWith(
          _$_ClijeoUserStable value, $Res Function(_$_ClijeoUserStable) then) =
      __$$_ClijeoUserStableCopyWithImpl<$Res>;
  @useResult
  $Res call({ClijeoUser user});

  $ClijeoUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ClijeoUserStableCopyWithImpl<$Res>
    extends _$ClijeoUserStateCopyWithImpl<$Res, _$_ClijeoUserStable>
    implements _$$_ClijeoUserStableCopyWith<$Res> {
  __$$_ClijeoUserStableCopyWithImpl(
      _$_ClijeoUserStable _value, $Res Function(_$_ClijeoUserStable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_ClijeoUserStable(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ClijeoUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClijeoUserCopyWith<$Res> get user {
    return $ClijeoUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_ClijeoUserStable implements _ClijeoUserStable {
  const _$_ClijeoUserStable({required this.user});

  @override
  final ClijeoUser user;

  @override
  String toString() {
    return 'ClijeoUserState.stable(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClijeoUserStable &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClijeoUserStableCopyWith<_$_ClijeoUserStable> get copyWith =>
      __$$_ClijeoUserStableCopyWithImpl<_$_ClijeoUserStable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClijeoUser user) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return stable(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClijeoUser user)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return stable?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClijeoUser user)? stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClijeoUserStable value) stable,
    required TResult Function(_ClijeoUserLoading value) loading,
    required TResult Function(_ClijeoUserError value) error,
  }) {
    return stable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClijeoUserStable value)? stable,
    TResult? Function(_ClijeoUserLoading value)? loading,
    TResult? Function(_ClijeoUserError value)? error,
  }) {
    return stable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClijeoUserStable value)? stable,
    TResult Function(_ClijeoUserLoading value)? loading,
    TResult Function(_ClijeoUserError value)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(this);
    }
    return orElse();
  }
}

abstract class _ClijeoUserStable implements ClijeoUserState {
  const factory _ClijeoUserStable({required final ClijeoUser user}) =
      _$_ClijeoUserStable;

  ClijeoUser get user;
  @JsonKey(ignore: true)
  _$$_ClijeoUserStableCopyWith<_$_ClijeoUserStable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClijeoUserLoadingCopyWith<$Res> {
  factory _$$_ClijeoUserLoadingCopyWith(_$_ClijeoUserLoading value,
          $Res Function(_$_ClijeoUserLoading) then) =
      __$$_ClijeoUserLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClijeoUserLoadingCopyWithImpl<$Res>
    extends _$ClijeoUserStateCopyWithImpl<$Res, _$_ClijeoUserLoading>
    implements _$$_ClijeoUserLoadingCopyWith<$Res> {
  __$$_ClijeoUserLoadingCopyWithImpl(
      _$_ClijeoUserLoading _value, $Res Function(_$_ClijeoUserLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClijeoUserLoading implements _ClijeoUserLoading {
  const _$_ClijeoUserLoading();

  @override
  String toString() {
    return 'ClijeoUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClijeoUserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClijeoUser user) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClijeoUser user)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClijeoUser user)? stable,
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
    required TResult Function(_ClijeoUserStable value) stable,
    required TResult Function(_ClijeoUserLoading value) loading,
    required TResult Function(_ClijeoUserError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClijeoUserStable value)? stable,
    TResult? Function(_ClijeoUserLoading value)? loading,
    TResult? Function(_ClijeoUserError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClijeoUserStable value)? stable,
    TResult Function(_ClijeoUserLoading value)? loading,
    TResult Function(_ClijeoUserError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ClijeoUserLoading implements ClijeoUserState {
  const factory _ClijeoUserLoading() = _$_ClijeoUserLoading;
}

/// @nodoc
abstract class _$$_ClijeoUserErrorCopyWith<$Res> {
  factory _$$_ClijeoUserErrorCopyWith(
          _$_ClijeoUserError value, $Res Function(_$_ClijeoUserError) then) =
      __$$_ClijeoUserErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ClijeoUserErrorCopyWithImpl<$Res>
    extends _$ClijeoUserStateCopyWithImpl<$Res, _$_ClijeoUserError>
    implements _$$_ClijeoUserErrorCopyWith<$Res> {
  __$$_ClijeoUserErrorCopyWithImpl(
      _$_ClijeoUserError _value, $Res Function(_$_ClijeoUserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ClijeoUserError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClijeoUserError implements _ClijeoUserError {
  const _$_ClijeoUserError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ClijeoUserState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClijeoUserError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClijeoUserErrorCopyWith<_$_ClijeoUserError> get copyWith =>
      __$$_ClijeoUserErrorCopyWithImpl<_$_ClijeoUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClijeoUser user) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClijeoUser user)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClijeoUser user)? stable,
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
    required TResult Function(_ClijeoUserStable value) stable,
    required TResult Function(_ClijeoUserLoading value) loading,
    required TResult Function(_ClijeoUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClijeoUserStable value)? stable,
    TResult? Function(_ClijeoUserLoading value)? loading,
    TResult? Function(_ClijeoUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClijeoUserStable value)? stable,
    TResult Function(_ClijeoUserLoading value)? loading,
    TResult Function(_ClijeoUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ClijeoUserError implements ClijeoUserState {
  const factory _ClijeoUserError(final String error) = _$_ClijeoUserError;

  String get error;
  @JsonKey(ignore: true)
  _$$_ClijeoUserErrorCopyWith<_$_ClijeoUserError> get copyWith =>
      throw _privateConstructorUsedError;
}
