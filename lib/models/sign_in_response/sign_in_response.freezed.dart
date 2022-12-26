// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _SignInResponse.fromJson(json);
    case 'error':
      return _SignInResponseError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SignInResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SignInResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool firstLogin, String jwt) $default, {
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool firstLogin, String jwt)? $default, {
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool firstLogin, String jwt)? $default, {
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignInResponse value) $default, {
    required TResult Function(_SignInResponseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignInResponse value)? $default, {
    TResult? Function(_SignInResponseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignInResponse value)? $default, {
    TResult Function(_SignInResponseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseCopyWith<$Res> {
  factory $SignInResponseCopyWith(
          SignInResponse value, $Res Function(SignInResponse) then) =
      _$SignInResponseCopyWithImpl<$Res, SignInResponse>;
}

/// @nodoc
class _$SignInResponseCopyWithImpl<$Res, $Val extends SignInResponse>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInResponseCopyWith<$Res> {
  factory _$$_SignInResponseCopyWith(
          _$_SignInResponse value, $Res Function(_$_SignInResponse) then) =
      __$$_SignInResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({bool firstLogin, String jwt});
}

/// @nodoc
class __$$_SignInResponseCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res, _$_SignInResponse>
    implements _$$_SignInResponseCopyWith<$Res> {
  __$$_SignInResponseCopyWithImpl(
      _$_SignInResponse _value, $Res Function(_$_SignInResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstLogin = null,
    Object? jwt = null,
  }) {
    return _then(_$_SignInResponse(
      firstLogin: null == firstLogin
          ? _value.firstLogin
          : firstLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInResponse implements _SignInResponse {
  const _$_SignInResponse(
      {required this.firstLogin, required this.jwt, final String? $type})
      : $type = $type ?? 'default';

  factory _$_SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignInResponseFromJson(json);

  @override
  final bool firstLogin;
  @override
  final String jwt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignInResponse(firstLogin: $firstLogin, jwt: $jwt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInResponse &&
            (identical(other.firstLogin, firstLogin) ||
                other.firstLogin == firstLogin) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstLogin, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInResponseCopyWith<_$_SignInResponse> get copyWith =>
      __$$_SignInResponseCopyWithImpl<_$_SignInResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool firstLogin, String jwt) $default, {
    required TResult Function() error,
  }) {
    return $default(firstLogin, jwt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool firstLogin, String jwt)? $default, {
    TResult? Function()? error,
  }) {
    return $default?.call(firstLogin, jwt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool firstLogin, String jwt)? $default, {
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(firstLogin, jwt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignInResponse value) $default, {
    required TResult Function(_SignInResponseError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignInResponse value)? $default, {
    TResult? Function(_SignInResponseError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignInResponse value)? $default, {
    TResult Function(_SignInResponseError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInResponseToJson(
      this,
    );
  }
}

abstract class _SignInResponse implements SignInResponse {
  const factory _SignInResponse(
      {required final bool firstLogin,
      required final String jwt}) = _$_SignInResponse;

  factory _SignInResponse.fromJson(Map<String, dynamic> json) =
      _$_SignInResponse.fromJson;

  bool get firstLogin;
  String get jwt;
  @JsonKey(ignore: true)
  _$$_SignInResponseCopyWith<_$_SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInResponseErrorCopyWith<$Res> {
  factory _$$_SignInResponseErrorCopyWith(_$_SignInResponseError value,
          $Res Function(_$_SignInResponseError) then) =
      __$$_SignInResponseErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInResponseErrorCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res, _$_SignInResponseError>
    implements _$$_SignInResponseErrorCopyWith<$Res> {
  __$$_SignInResponseErrorCopyWithImpl(_$_SignInResponseError _value,
      $Res Function(_$_SignInResponseError) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_SignInResponseError implements _SignInResponseError {
  const _$_SignInResponseError({final String? $type})
      : $type = $type ?? 'error';

  factory _$_SignInResponseError.fromJson(Map<String, dynamic> json) =>
      _$$_SignInResponseErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignInResponse.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInResponseError);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool firstLogin, String jwt) $default, {
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool firstLogin, String jwt)? $default, {
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool firstLogin, String jwt)? $default, {
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignInResponse value) $default, {
    required TResult Function(_SignInResponseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignInResponse value)? $default, {
    TResult? Function(_SignInResponseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignInResponse value)? $default, {
    TResult Function(_SignInResponseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInResponseErrorToJson(
      this,
    );
  }
}

abstract class _SignInResponseError implements SignInResponse {
  const factory _SignInResponseError() = _$_SignInResponseError;

  factory _SignInResponseError.fromJson(Map<String, dynamic> json) =
      _$_SignInResponseError.fromJson;
}
