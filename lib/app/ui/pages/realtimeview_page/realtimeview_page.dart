// ignore_for_file: avoid_print

import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RealtimeviewController extends GetxController {
  late YoutubePlayerController youtubeController;

  @override
  void onInit() {
    super.onInit();
    const videoUrl = "https://www.youtube.com/watch?v=jfKfPfyJRdk";
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    youtubeController = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true, // Tự động phát
        mute: false, // Không tắt tiếng
        disableDragSeek: false, // Cho phép kéo để tua video
        loop: false, // Không lặp lại video
        isLive: true, // Đánh dấu là video trực tiếp
        //forceHD: false, // Không bắt buộc độ phân giải HD
        enableCaption: false, // Tắt phụ đề
        controlsVisibleAtStart: false, // Hiển thị điều khiển ngay từ đầu
        hideControls: false, // Không ẩn điều khiển video
        showLiveFullscreenButton: false, // Vô hiệu hóa nút toàn màn hình
      ),
    );
  }

  @override
  void onClose() {
    youtubeController.dispose();
    super.onClose();
  }
}

class RealtimeviewPage extends StatelessWidget {
  const RealtimeviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RealtimeviewController controller = Get.put(RealtimeviewController());

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAll(() => const HomePage());
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: YoutubePlayer(
              controller: controller.youtubeController,
              showVideoProgressIndicator: true,
              onReady: () {
                print('YouTube Player is ready.');
              },
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blueGrey[50],
              child: const Center(
                child: Text(
                  'Content below video',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
