import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:clijeo_public/controllers/new_query/new_query_form_controller.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class QueryRecording extends StatefulWidget {
  const QueryRecording({super.key, required this.controller});
  final NewQueryFormController controller;

  @override
  State<QueryRecording> createState() => _QueryRecordingState();
}

class _QueryRecordingState extends State<QueryRecording> {
  bool micActivated = false;
  int _recordDuration = 0;
  final _audioRecorder = Record();
  Timer? _timer;

  // Future<String> get _localPath async {
  //   final directory = await getApplicationDocumentsDirectory();

  //   return directory.path;
  // }

  void _micPressStart(_) async {
    setState(() {
      micActivated = true;
    });
    await _start();
  }

  void _micPressEnd(_) async {
    setState(() {
      micActivated = false;
    });
    await _stop();
  }

  void _startTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        // We don't do anything with this but printing
        final isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.aacLc,
        );
        log('${AudioEncoder.aacLc.name} supported: $isSupported');

        // final devs = await _audioRecorder.listInputDevices();
        // final isRecording = await _audioRecorder.isRecording();
        // String path = await _localPath;
        // log(path);
        await _audioRecorder.start();
        _recordDuration = 0;

        _startTimer();
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _stop() async {
    _timer?.cancel();
    _recordDuration = 0;

    final path = await _audioRecorder.stop();
    if (path != null) {
      widget.controller.updateStableStateVoiceAttachmentPath(path);
    }

    log("Tried Opening file");
    try {
      var file = await File(path!).exists();
      // final contents = await file.readAsString();
      log("CONTENTS");
      log(file.toString());
    } catch (e) {
      log("Error: ${e.toString()}");
    }
    log(path ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onLongPressStart: _micPressStart,
          onLongPressEnd: _micPressEnd,
          child: Container(
            decoration: BoxDecoration(
                color: micActivated
                    ? AppTheme.primaryColor
                    : AppTheme.selectedColor,
                shape: BoxShape.circle),
            child: Padding(
              padding: EdgeInsets.all(micActivated ? 12.0 : 8.0),
              child: Icon(Icons.mic,
                  color: micActivated ? AppTheme.textLight : AppTheme.textDark,
                  size: 20),
            ),
          ),
        ),
        if (micActivated)
          Container(
            decoration: const BoxDecoration(
                color: AppTheme.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${(_recordDuration / 60).floor()}:${_recordDuration % 60}",
                style: AppTextStyle.verySmallLightTitle,
              ),
            ),
          )
      ],
    );
  }
}
