import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RealtimeviewController extends GetxController {
  late YoutubePlayerController youtubeController;
  var operatedExtinguisher = false.obs;

  void extinguisherBtn() {
    operatedExtinguisher.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    const videoUrl = "https://www.youtube.com/watch?v=jfKfPfyJRdk";
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    youtubeController = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        disableDragSeek: false,
        loop: false,
        isLive: true,
        forceHD: true,
        enableCaption: false,
        controlsVisibleAtStart: false,
        hideControls: false,
        showLiveFullscreenButton: true,
      ),
    );
  }
  @override
  void onClose() {
    youtubeController.dispose();
    super.onClose();
  }
}
