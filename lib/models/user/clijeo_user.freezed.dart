// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clijeo_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClijeoUser _$ClijeoUserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _ClijeoUser.fromJson(json);
    case 'empty':
      return _ClijeoEmptyUser.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ClijeoUser',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ClijeoUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)
        $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)?
        $default, {
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClijeoUser value) $default, {
    required TResult Function(_ClijeoEmptyUser value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ClijeoUser value)? $default, {
    TResult? Function(_ClijeoEmptyUser value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClijeoUser value)? $default, {
    TResult Function(_ClijeoEmptyUser value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClijeoUserCopyWith<$Res> {
  factory $ClijeoUserCopyWith(
          ClijeoUser value, $Res Function(ClijeoUser) then) =
      _$ClijeoUserCopyWithImpl<$Res, ClijeoUser>;
}

/// @nodoc
class _$ClijeoUserCopyWithImpl<$Res, $Val extends ClijeoUser>
    implements $ClijeoUserCopyWith<$Res> {
  _$ClijeoUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClijeoUserCopyWith<$Res> {
  factory _$$_ClijeoUserCopyWith(
          _$_ClijeoUser value, $Res Function(_$_ClijeoUser) then) =
      __$$_ClijeoUserCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location});
}

/// @nodoc
class __$$_ClijeoUserCopyWithImpl<$Res>
    extends _$ClijeoUserCopyWithImpl<$Res, _$_ClijeoUser>
    implements _$$_ClijeoUserCopyWith<$Res> {
  __$$_ClijeoUserCopyWithImpl(
      _$_ClijeoUser _value, $Res Function(_$_ClijeoUser) _then)
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
    return _then(_$_ClijeoUser(
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
@JsonSerializable()
class _$_ClijeoUser with DiagnosticableTreeMixin implements _ClijeoUser {
  const _$_ClijeoUser(
      {required this.name,
      this.age,
      this.gender,
      this.phoneNumber,
      this.location,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$_ClijeoUser.fromJson(Map<String, dynamic> json) =>
      _$$_ClijeoUserFromJson(json);

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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClijeoUser(name: $name, age: $age, gender: $gender, phoneNumber: $phoneNumber, location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClijeoUser'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClijeoUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, age, gender, phoneNumber, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClijeoUserCopyWith<_$_ClijeoUser> get copyWith =>
      __$$_ClijeoUserCopyWithImpl<_$_ClijeoUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)
        $default, {
    required TResult Function() empty,
  }) {
    return $default(name, age, gender, phoneNumber, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)?
        $default, {
    TResult? Function()? empty,
  }) {
    return $default?.call(name, age, gender, phoneNumber, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, age, gender, phoneNumber, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClijeoUser value) $default, {
    required TResult Function(_ClijeoEmptyUser value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ClijeoUser value)? $default, {
    TResult? Function(_ClijeoEmptyUser value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClijeoUser value)? $default, {
    TResult Function(_ClijeoEmptyUser value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClijeoUserToJson(
      this,
    );
  }
}

abstract class _ClijeoUser implements ClijeoUser {
  const factory _ClijeoUser(
      {required final String name,
      final int? age,
      final String? gender,
      final String? phoneNumber,
      final String? location}) = _$_ClijeoUser;

  factory _ClijeoUser.fromJson(Map<String, dynamic> json) =
      _$_ClijeoUser.fromJson;

  String get name;
  int? get age;
  String? get gender;
  String? get phoneNumber;
  String? get location;
  @JsonKey(ignore: true)
  _$$_ClijeoUserCopyWith<_$_ClijeoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClijeoEmptyUserCopyWith<$Res> {
  factory _$$_ClijeoEmptyUserCopyWith(
          _$_ClijeoEmptyUser value, $Res Function(_$_ClijeoEmptyUser) then) =
      __$$_ClijeoEmptyUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClijeoEmptyUserCopyWithImpl<$Res>
    extends _$ClijeoUserCopyWithImpl<$Res, _$_ClijeoEmptyUser>
    implements _$$_ClijeoEmptyUserCopyWith<$Res> {
  __$$_ClijeoEmptyUserCopyWithImpl(
      _$_ClijeoEmptyUser _value, $Res Function(_$_ClijeoEmptyUser) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ClijeoEmptyUser
    with DiagnosticableTreeMixin
    implements _ClijeoEmptyUser {
  _$_ClijeoEmptyUser({final String? $type}) : $type = $type ?? 'empty';

  factory _$_ClijeoEmptyUser.fromJson(Map<String, dynamic> json) =>
      _$$_ClijeoEmptyUserFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClijeoUser.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ClijeoUser.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClijeoEmptyUser);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)
        $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, int? age, String? gender,
            String? phoneNumber, String? location)?
        $default, {
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, int? age, String? gender, String? phoneNumber,
            String? location)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClijeoUser value) $default, {
    required TResult Function(_ClijeoEmptyUser value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ClijeoUser value)? $default, {
    TResult? Function(_ClijeoEmptyUser value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClijeoUser value)? $default, {
    TResult Function(_ClijeoEmptyUser value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClijeoEmptyUserToJson(
      this,
    );
  }
}

abstract class _ClijeoEmptyUser implements ClijeoUser {
  factory _ClijeoEmptyUser() = _$_ClijeoEmptyUser;

  factory _ClijeoEmptyUser.fromJson(Map<String, dynamic> json) =
      _$_ClijeoEmptyUser.fromJson;
}
