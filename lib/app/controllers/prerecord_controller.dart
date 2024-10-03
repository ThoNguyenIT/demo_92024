import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PrerecordController extends GetxController {
  late YoutubePlayerController youtubeController;

  @override
  void onInit() {
    super.onInit();
    const videoUrl = "https://www.youtube.com/watch?v=kj_tldMmu4w";
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    youtubeController = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        enableCaption: false,
        controlsVisibleAtStart: false,
        hideControls: false,
        showLiveFullscreenButton: false,
      ),
    );
  }
}
