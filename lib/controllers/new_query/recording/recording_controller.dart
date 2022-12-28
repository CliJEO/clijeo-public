import 'dart:async';
import 'dart:developer';

import 'package:clijeo_public/controllers/new_query/new_query_form_controller.dart';
import 'package:clijeo_public/controllers/new_query/recording/recording_state.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class RecordingController extends ChangeNotifier {
  RecordingState state = const RecordingState.notRecording();
  final Record _audioRecorder = Record();
  Timer? _timer;

  void _startTimer() {
    // cancel is a timer is running previously
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      state = state.maybeMap(
          recording: (value) => value.copyWith(duration: value.duration + 1),
          orElse: () => state);
      notifyListeners();
    });
  }

  Future<void> startRecording() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        await _audioRecorder.start();
        state = const RecordingState.recording(duration: 0);
        notifyListeners();
        _startTimer();
      }
    } catch (e) {
      log(e.toString());
      state = RecordingState.error(e.toString());
      notifyListeners();
    }
  }

  Future<void> stopRecording(NewQueryFormController controller) async {
    // stop the timer callback
    _timer?.cancel();

    final path = await _audioRecorder.stop();
    if (path != null) {
      controller.updateStableStateVoiceAttachmentPath(path);
      state = const RecordingState.recordingCompleted();
    } else {
      log("NULL PATH");
      state = RecordingState.error("NULL PATH");
    }
    notifyListeners();
  }
}
