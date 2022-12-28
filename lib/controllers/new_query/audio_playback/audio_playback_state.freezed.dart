// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_playback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioPlaybackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() paused,
    required TResult Function() playing,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? paused,
    TResult? Function()? playing,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? paused,
    TResult Function()? playing,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlaybackPaused value) paused,
    required TResult Function(_AudioPlaybackPlaying value) playing,
    required TResult Function(_AudioPlaybackError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlaybackPaused value)? paused,
    TResult? Function(_AudioPlaybackPlaying value)? playing,
    TResult? Function(_AudioPlaybackError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlaybackPaused value)? paused,
    TResult Function(_AudioPlaybackPlaying value)? playing,
    TResult Function(_AudioPlaybackError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlaybackStateCopyWith<$Res> {
  factory $AudioPlaybackStateCopyWith(
          AudioPlaybackState value, $Res Function(AudioPlaybackState) then) =
      _$AudioPlaybackStateCopyWithImpl<$Res, AudioPlaybackState>;
}

/// @nodoc
class _$AudioPlaybackStateCopyWithImpl<$Res, $Val extends AudioPlaybackState>
    implements $AudioPlaybackStateCopyWith<$Res> {
  _$AudioPlaybackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AudioPlaybackPausedCopyWith<$Res> {
  factory _$$_AudioPlaybackPausedCopyWith(_$_AudioPlaybackPaused value,
          $Res Function(_$_AudioPlaybackPaused) then) =
      __$$_AudioPlaybackPausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AudioPlaybackPausedCopyWithImpl<$Res>
    extends _$AudioPlaybackStateCopyWithImpl<$Res, _$_AudioPlaybackPaused>
    implements _$$_AudioPlaybackPausedCopyWith<$Res> {
  __$$_AudioPlaybackPausedCopyWithImpl(_$_AudioPlaybackPaused _value,
      $Res Function(_$_AudioPlaybackPaused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AudioPlaybackPaused implements _AudioPlaybackPaused {
  const _$_AudioPlaybackPaused();

  @override
  String toString() {
    return 'AudioPlaybackState.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AudioPlaybackPaused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() paused,
    required TResult Function() playing,
    required TResult Function(String error) error,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? paused,
    TResult? Function()? playing,
    TResult? Function(String error)? error,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? paused,
    TResult Function()? playing,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlaybackPaused value) paused,
    required TResult Function(_AudioPlaybackPlaying value) playing,
    required TResult Function(_AudioPlaybackError value) error,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlaybackPaused value)? paused,
    TResult? Function(_AudioPlaybackPlaying value)? playing,
    TResult? Function(_AudioPlaybackError value)? error,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlaybackPaused value)? paused,
    TResult Function(_AudioPlaybackPlaying value)? playing,
    TResult Function(_AudioPlaybackError value)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _AudioPlaybackPaused implements AudioPlaybackState {
  const factory _AudioPlaybackPaused() = _$_AudioPlaybackPaused;
}

/// @nodoc
abstract class _$$_AudioPlaybackPlayingCopyWith<$Res> {
  factory _$$_AudioPlaybackPlayingCopyWith(_$_AudioPlaybackPlaying value,
          $Res Function(_$_AudioPlaybackPlaying) then) =
      __$$_AudioPlaybackPlayingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AudioPlaybackPlayingCopyWithImpl<$Res>
    extends _$AudioPlaybackStateCopyWithImpl<$Res, _$_AudioPlaybackPlaying>
    implements _$$_AudioPlaybackPlayingCopyWith<$Res> {
  __$$_AudioPlaybackPlayingCopyWithImpl(_$_AudioPlaybackPlaying _value,
      $Res Function(_$_AudioPlaybackPlaying) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AudioPlaybackPlaying implements _AudioPlaybackPlaying {
  const _$_AudioPlaybackPlaying();

  @override
  String toString() {
    return 'AudioPlaybackState.playing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AudioPlaybackPlaying);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() paused,
    required TResult Function() playing,
    required TResult Function(String error) error,
  }) {
    return playing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? paused,
    TResult? Function()? playing,
    TResult? Function(String error)? error,
  }) {
    return playing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? paused,
    TResult Function()? playing,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlaybackPaused value) paused,
    required TResult Function(_AudioPlaybackPlaying value) playing,
    required TResult Function(_AudioPlaybackError value) error,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlaybackPaused value)? paused,
    TResult? Function(_AudioPlaybackPlaying value)? playing,
    TResult? Function(_AudioPlaybackError value)? error,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlaybackPaused value)? paused,
    TResult Function(_AudioPlaybackPlaying value)? playing,
    TResult Function(_AudioPlaybackError value)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _AudioPlaybackPlaying implements AudioPlaybackState {
  const factory _AudioPlaybackPlaying() = _$_AudioPlaybackPlaying;
}

/// @nodoc
abstract class _$$_AudioPlaybackErrorCopyWith<$Res> {
  factory _$$_AudioPlaybackErrorCopyWith(_$_AudioPlaybackError value,
          $Res Function(_$_AudioPlaybackError) then) =
      __$$_AudioPlaybackErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AudioPlaybackErrorCopyWithImpl<$Res>
    extends _$AudioPlaybackStateCopyWithImpl<$Res, _$_AudioPlaybackError>
    implements _$$_AudioPlaybackErrorCopyWith<$Res> {
  __$$_AudioPlaybackErrorCopyWithImpl(
      _$_AudioPlaybackError _value, $Res Function(_$_AudioPlaybackError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AudioPlaybackError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AudioPlaybackError implements _AudioPlaybackError {
  const _$_AudioPlaybackError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AudioPlaybackState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlaybackError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioPlaybackErrorCopyWith<_$_AudioPlaybackError> get copyWith =>
      __$$_AudioPlaybackErrorCopyWithImpl<_$_AudioPlaybackError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() paused,
    required TResult Function() playing,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? paused,
    TResult? Function()? playing,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? paused,
    TResult Function()? playing,
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
    required TResult Function(_AudioPlaybackPaused value) paused,
    required TResult Function(_AudioPlaybackPlaying value) playing,
    required TResult Function(_AudioPlaybackError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlaybackPaused value)? paused,
    TResult? Function(_AudioPlaybackPlaying value)? playing,
    TResult? Function(_AudioPlaybackError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlaybackPaused value)? paused,
    TResult Function(_AudioPlaybackPlaying value)? playing,
    TResult Function(_AudioPlaybackError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AudioPlaybackError implements AudioPlaybackState {
  const factory _AudioPlaybackError(final String error) = _$_AudioPlaybackError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AudioPlaybackErrorCopyWith<_$_AudioPlaybackError> get copyWith =>
      throw _privateConstructorUsedError;
}
