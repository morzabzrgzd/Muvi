import 'dart:developer';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoPlayPage extends StatelessWidget {
  const VideoPlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoWithControls(),
          // child: FlickVideoPlayer(
          //   systemUIOverlay: [

          //   ],
          //   flickManager: FlickManager(
          //     autoPlay: false,
          //     autoInitialize: true,
          //     onVideoEnd: () {
          //       log('Video Ended!!!!!');
          //     },

          //     videoPlayerController: VideoPlayerController.networkUrl(
          //       videoPlayerOptions: VideoPlayerOptions(
          //         allowBackgroundPlayback: false,

          //       ),
          //       Uri.parse(
          //         'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
