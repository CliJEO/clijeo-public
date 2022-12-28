import 'dart:developer';
import 'dart:io';

import 'package:clijeo_public/controllers/new_query/audio_playback/audio_playback_controller.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class QueryAudioPlayer extends StatelessWidget {
  const QueryAudioPlayer(
      {super.key, required this.voiceAttachmentPath, this.closeFunction});
  final String voiceAttachmentPath;
  final Function(int)? closeFunction;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AudioPlaybackController>(
      create: (context) => AudioPlaybackController(),
      child:
          Consumer<AudioPlaybackController>(builder: (context, controller, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => controller.playAudio(voiceAttachmentPath),
              child: Icon(
                  controller.state.maybeMap(
                      playing: (_) => Icons.pause,
                      orElse: () => Icons.play_arrow),
                  color: AppTheme.textDarkLight,
                  size: 20),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: AppTheme.selectedColor,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "",
                  style: AppTextStyle.verySmallLightTitle,
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
