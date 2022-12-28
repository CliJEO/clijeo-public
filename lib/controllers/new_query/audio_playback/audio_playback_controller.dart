import 'package:audioplayers/audioplayers.dart';
import 'package:clijeo_public/controllers/new_query/audio_playback/audio_playback_state.dart';
import 'package:flutter/material.dart';

class AudioPlaybackController extends ChangeNotifier {
  AudioPlaybackState state = const AudioPlaybackState.paused();
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playAudio(String? path) async {
    if (path != null) {
      await _audioPlayer.play(DeviceFileSource(path));
      state = AudioPlaybackState.playing();
    } else {
      state = AudioPlaybackState.error("NULL PATH");
    }
    notifyListeners();
  }
}
