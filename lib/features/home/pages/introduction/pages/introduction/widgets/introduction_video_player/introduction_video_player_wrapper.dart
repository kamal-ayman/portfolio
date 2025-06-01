import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constants.dart';
import 'package:video_player/video_player.dart';

import 'introduction_video_player.dart';

class IntroductionVideoPlayerWrapper extends StatefulWidget {
  const IntroductionVideoPlayerWrapper({super.key});

  @override
  State<IntroductionVideoPlayerWrapper> createState() =>
      _IntroductionVideoPlayerWrapperState();
}

class _IntroductionVideoPlayerWrapperState
    extends State<IntroductionVideoPlayerWrapper> {
  late final VideoPlayerController videoPlayerController;
  bool isInitialized = false;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  Future<void> initializeVideoPlayer() async {
    videoPlayerController = VideoPlayerController.asset(
      AppAssets.videos.overview,
      videoPlayerOptions: VideoPlayerOptions(
        webOptions: VideoPlayerWebOptions(
          controls: VideoPlayerWebOptionsControls.enabled(
            allowDownload: false,
            allowPlaybackRate: false,
            allowPictureInPicture: false,
          ),
        ),
      ),
    );

    await videoPlayerController.initialize();

    setState(() {
      isInitialized = true;
    });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionVideoPlayerWidget(
      isInitialized: isInitialized,
      videoPlayerController: videoPlayerController,
    );
  }
}
