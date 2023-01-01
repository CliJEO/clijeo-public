// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueryMedia _$QueryMediaFromJson(Map<String, dynamic> json) {
  return _QueryMedia.fromJson(json);
}

/// @nodoc
mixin _$QueryMedia {
  String get url => throw _privateConstructorUsedError;
  String get mimetype => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryMediaCopyWith<QueryMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryMediaCopyWith<$Res> {
  factory $QueryMediaCopyWith(
          QueryMedia value, $Res Function(QueryMedia) then) =
      _$QueryMediaCopyWithImpl<$Res, QueryMedia>;
  @useResult
  $Res call({String url, String mimetype});
}

/// @nodoc
class _$QueryMediaCopyWithImpl<$Res, $Val extends QueryMedia>
    implements $QueryMediaCopyWith<$Res> {
  _$QueryMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? mimetype = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mimetype: null == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryMediaCopyWith<$Res>
    implements $QueryMediaCopyWith<$Res> {
  factory _$$_QueryMediaCopyWith(
          _$_QueryMedia value, $Res Function(_$_QueryMedia) then) =
      __$$_QueryMediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String mimetype});
}

/// @nodoc
class __$$_QueryMediaCopyWithImpl<$Res>
    extends _$QueryMediaCopyWithImpl<$Res, _$_QueryMedia>
    implements _$$_QueryMediaCopyWith<$Res> {
  __$$_QueryMediaCopyWithImpl(
      _$_QueryMedia _value, $Res Function(_$_QueryMedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? mimetype = null,
  }) {
    return _then(_$_QueryMedia(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mimetype: null == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueryMedia with DiagnosticableTreeMixin implements _QueryMedia {
  const _$_QueryMedia({required this.url, required this.mimetype});

  factory _$_QueryMedia.fromJson(Map<String, dynamic> json) =>
      _$$_QueryMediaFromJson(json);

  @override
  final String url;
  @override
  final String mimetype;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryMedia(url: $url, mimetype: $mimetype)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryMedia'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('mimetype', mimetype));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryMedia &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.mimetype, mimetype) ||
                other.mimetype == mimetype));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, mimetype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryMediaCopyWith<_$_QueryMedia> get copyWith =>
      __$$_QueryMediaCopyWithImpl<_$_QueryMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryMediaToJson(
      this,
    );
  }
}

abstract class _QueryMedia implements QueryMedia {
  const factory _QueryMedia(
      {required final String url,
      required final String mimetype}) = _$_QueryMedia;

  factory _QueryMedia.fromJson(Map<String, dynamic> json) =
      _$_QueryMedia.fromJson;

  @override
  String get url;
  @override
  String get mimetype;
  @override
  @JsonKey(ignore: true)
  _$$_QueryMediaCopyWith<_$_QueryMedia> get copyWith =>
      throw _privateConstructorUsedError;
}
