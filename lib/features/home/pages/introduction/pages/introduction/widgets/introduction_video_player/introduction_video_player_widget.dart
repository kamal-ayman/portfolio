import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:video_player/video_player.dart';

class IntroductionVideoPlayerWidget extends StatelessWidget {
  final bool isInitialized;
  final VideoPlayerController videoPlayerController;
  const IntroductionVideoPlayerWidget({
    super.key,
    required this.isInitialized,
    required this.videoPlayerController,
  });

  @override
  Widget build(BuildContext context) {
    final aspectRatio = videoPlayerController.value.aspectRatio;
    final width = 500.0;
    final height = width / aspectRatio;
    if (!isInitialized) {
      return Skeletonizer(
        child: Container(width: width, height: height, color: Colors.black),
      );
    }
    return SizedBox(
      width: width,
      height: height,
      child: VideoPlayer(videoPlayerController),
    );
  }
}
