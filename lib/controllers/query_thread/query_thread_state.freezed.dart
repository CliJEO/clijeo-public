// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_thread_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueryThreadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Query query) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Query query)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Query query)? stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryThreadStable value) stable,
    required TResult Function(_QueryThreadLoading value) loading,
    required TResult Function(_QueryThreadError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryThreadStable value)? stable,
    TResult? Function(_QueryThreadLoading value)? loading,
    TResult? Function(_QueryThreadError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryThreadStable value)? stable,
    TResult Function(_QueryThreadLoading value)? loading,
    TResult Function(_QueryThreadError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryThreadStateCopyWith<$Res> {
  factory $QueryThreadStateCopyWith(
          QueryThreadState value, $Res Function(QueryThreadState) then) =
      _$QueryThreadStateCopyWithImpl<$Res, QueryThreadState>;
}

/// @nodoc
class _$QueryThreadStateCopyWithImpl<$Res, $Val extends QueryThreadState>
    implements $QueryThreadStateCopyWith<$Res> {
  _$QueryThreadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_QueryThreadStableCopyWith<$Res> {
  factory _$$_QueryThreadStableCopyWith(_$_QueryThreadStable value,
          $Res Function(_$_QueryThreadStable) then) =
      __$$_QueryThreadStableCopyWithImpl<$Res>;
  @useResult
  $Res call({Query query});

  $QueryCopyWith<$Res> get query;
}

/// @nodoc
class __$$_QueryThreadStableCopyWithImpl<$Res>
    extends _$QueryThreadStateCopyWithImpl<$Res, _$_QueryThreadStable>
    implements _$$_QueryThreadStableCopyWith<$Res> {
  __$$_QueryThreadStableCopyWithImpl(
      _$_QueryThreadStable _value, $Res Function(_$_QueryThreadStable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_QueryThreadStable(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Query,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryCopyWith<$Res> get query {
    return $QueryCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value));
    });
  }
}

/// @nodoc

class _$_QueryThreadStable implements _QueryThreadStable {
  const _$_QueryThreadStable({required this.query});

  @override
  final Query query;

  @override
  String toString() {
    return 'QueryThreadState.stable(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryThreadStable &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryThreadStableCopyWith<_$_QueryThreadStable> get copyWith =>
      __$$_QueryThreadStableCopyWithImpl<_$_QueryThreadStable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Query query) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return stable(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Query query)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return stable?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Query query)? stable,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryThreadStable value) stable,
    required TResult Function(_QueryThreadLoading value) loading,
    required TResult Function(_QueryThreadError value) error,
  }) {
    return stable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryThreadStable value)? stable,
    TResult? Function(_QueryThreadLoading value)? loading,
    TResult? Function(_QueryThreadError value)? error,
  }) {
    return stable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryThreadStable value)? stable,
    TResult Function(_QueryThreadLoading value)? loading,
    TResult Function(_QueryThreadError value)? error,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(this);
    }
    return orElse();
  }
}

abstract class _QueryThreadStable implements QueryThreadState {
  const factory _QueryThreadStable({required final Query query}) =
      _$_QueryThreadStable;

  Query get query;
  @JsonKey(ignore: true)
  _$$_QueryThreadStableCopyWith<_$_QueryThreadStable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryThreadLoadingCopyWith<$Res> {
  factory _$$_QueryThreadLoadingCopyWith(_$_QueryThreadLoading value,
          $Res Function(_$_QueryThreadLoading) then) =
      __$$_QueryThreadLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QueryThreadLoadingCopyWithImpl<$Res>
    extends _$QueryThreadStateCopyWithImpl<$Res, _$_QueryThreadLoading>
    implements _$$_QueryThreadLoadingCopyWith<$Res> {
  __$$_QueryThreadLoadingCopyWithImpl(
      _$_QueryThreadLoading _value, $Res Function(_$_QueryThreadLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QueryThreadLoading implements _QueryThreadLoading {
  const _$_QueryThreadLoading();

  @override
  String toString() {
    return 'QueryThreadState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QueryThreadLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Query query) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Query query)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Query query)? stable,
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
    required TResult Function(_QueryThreadStable value) stable,
    required TResult Function(_QueryThreadLoading value) loading,
    required TResult Function(_QueryThreadError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryThreadStable value)? stable,
    TResult? Function(_QueryThreadLoading value)? loading,
    TResult? Function(_QueryThreadError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryThreadStable value)? stable,
    TResult Function(_QueryThreadLoading value)? loading,
    TResult Function(_QueryThreadError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _QueryThreadLoading implements QueryThreadState {
  const factory _QueryThreadLoading() = _$_QueryThreadLoading;
}

/// @nodoc
abstract class _$$_QueryThreadErrorCopyWith<$Res> {
  factory _$$_QueryThreadErrorCopyWith(
          _$_QueryThreadError value, $Res Function(_$_QueryThreadError) then) =
      __$$_QueryThreadErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_QueryThreadErrorCopyWithImpl<$Res>
    extends _$QueryThreadStateCopyWithImpl<$Res, _$_QueryThreadError>
    implements _$$_QueryThreadErrorCopyWith<$Res> {
  __$$_QueryThreadErrorCopyWithImpl(
      _$_QueryThreadError _value, $Res Function(_$_QueryThreadError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_QueryThreadError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QueryThreadError implements _QueryThreadError {
  const _$_QueryThreadError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'QueryThreadState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryThreadError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryThreadErrorCopyWith<_$_QueryThreadError> get copyWith =>
      __$$_QueryThreadErrorCopyWithImpl<_$_QueryThreadError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Query query) stable,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Query query)? stable,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Query query)? stable,
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
    required TResult Function(_QueryThreadStable value) stable,
    required TResult Function(_QueryThreadLoading value) loading,
    required TResult Function(_QueryThreadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryThreadStable value)? stable,
    TResult? Function(_QueryThreadLoading value)? loading,
    TResult? Function(_QueryThreadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryThreadStable value)? stable,
    TResult Function(_QueryThreadLoading value)? loading,
    TResult Function(_QueryThreadError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QueryThreadError implements QueryThreadState {
  const factory _QueryThreadError(final String error) = _$_QueryThreadError;

  String get error;
  @JsonKey(ignore: true)
  _$$_QueryThreadErrorCopyWith<_$_QueryThreadError> get copyWith =>
      throw _privateConstructorUsedError;
}
