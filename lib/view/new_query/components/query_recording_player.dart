import 'dart:developer';
import 'dart:io';

import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class QueryRecordingPlayer extends StatefulWidget {
  const QueryRecordingPlayer({super.key, required this.voiceAttachmentPath});
  final String voiceAttachmentPath;

  @override
  State<QueryRecordingPlayer> createState() => _QueryRecordingPlayerState();
}

class _QueryRecordingPlayerState extends State<QueryRecordingPlayer> {
  bool audioPlaying = false;
  int _recordDuration = 0;
  AudioPlayer player = AudioPlayer();

  //Future<void> _toggleAudioPlaying() async {
  //   if (!audioPlaying) {
  //     try {
  //       log(widget.voiceAttachmentPath);
  //       var source = DeviceFileSource(widget.voiceAttachmentPath);
  //       await player.play(source);
  //     } catch (e) {
  //       log("ERROR");
  //       log(e.toString());
  //     }
  //   } else {
  //     await player.pause();
  //   }
  //   setState(() {
  //     audioPlaying = !audioPlaying;
  //   });
  // }

  Future<void> _playAudio() async {
    await player.setFilePath(widget.voiceAttachmentPath);
    await player.play();
    log("PLAYING AUDIO");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: _playAudio,
          child: Icon(audioPlaying ? Icons.pause : Icons.play_arrow,
              color: AppTheme.textDarkLight, size: 20),
        ),
        Container(
          decoration: const BoxDecoration(
              color: AppTheme.selectedColor,
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
