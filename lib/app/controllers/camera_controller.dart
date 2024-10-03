import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CameraController extends GetxController {
  late YoutubePlayerController youtubeController;

  @override
  void onInit() {
    super.onInit();
    const videoUrl = "https://www.youtube.com/watch?v=jfKfPfyJRdk";
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    youtubeController = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: true,
        enableCaption: false,
        controlsVisibleAtStart: false,
        hideControls: true,
        showLiveFullscreenButton: false,
      ),
    );
  }

  /* @override
  void onClose() {
    youtubeController.dispose();
    super.onClose();
  } */
}
