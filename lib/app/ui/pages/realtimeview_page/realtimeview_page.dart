import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
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

class RealtimeviewPage extends StatelessWidget {
  const RealtimeviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RealtimeviewController controller = Get.put(RealtimeviewController());
    final HomeController controller2 = Get.find<HomeController>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Get.offAll(() => const HomePage());
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: YoutubePlayer(
              controller: controller.youtubeController,
              showVideoProgressIndicator: true,
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Container(
                  color: Colors.blueGrey[50],
                  child: Column(
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.warning, color: Colors.yellow, size: 30),
                          SizedBox(width: 10),
                          Text(
                            "상황발생",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "발생 시간:",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "2023/08/10 10:45:30",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/room1.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      const Text(
                                        "  성남호",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/room2.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      const Text(
                                        "  판교호",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/room3.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      const Text(
                                        "  분당호",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/room1.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      const Text(
                                        "  방1",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/room2.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      const Text(
                                        "  방2",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/room3.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      const Text(
                                        "  방3",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Obx(
                          () => Image.asset(
                            controller2.currentData.value.imagePath,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          PopupDialog.showPopup(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 17, 0),
                        ),
                        label: Text(
                          '소 화',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        icon: Image.asset(
                          'assets/icons/extinguisher.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imagePaths.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                Image.asset(
                                  imagePaths[index],
                                  width: 80,
                                  height: 80,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class PopupDialog {
  static void showPopup(BuildContext context) {
    final RealtimeviewController controller =
        Get.find<RealtimeviewController>();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: 400,
            height: 300,
            child: Column(
              children: [
                SizedBox(
                  height: 160,
                  width: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/home1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    '정말로 끄시겠습니까?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.operatedExtinguisher;
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                        minimumSize: const Size(100, 50),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/extinguisher.png',
                            width: 35,
                            height: 35,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Yes",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        minimumSize: const Size(100, 50),
                      ),
                      child: const Text(
                        "아니오",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

List<String> imagePaths = [
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
  'assets/images/5.png',
];
