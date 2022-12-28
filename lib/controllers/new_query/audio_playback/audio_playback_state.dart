import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_playback_state.freezed.dart';

@freezed
abstract class AudioPlaybackState with _$AudioPlaybackState {
  const factory AudioPlaybackState.paused() = _AudioPlaybackPaused;
  const factory AudioPlaybackState.playing() = _AudioPlaybackPlaying;
  const factory AudioPlaybackState.error(String error) = _AudioPlaybackError;
}
