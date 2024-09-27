import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../controllers/cameraview_controller.dart';

class CameraviewPage extends GetView<CameraviewController> {
  const CameraviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CameraviewController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.offAll(() => const HomePage());
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: YoutubePlayer(
                controller: controller.youtubeController,
                showVideoProgressIndicator: true,
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Image.asset(
                        imagePaths[index],
                        /* width: 80,
                        height: 50, */
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "2023.08.07",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  for (var i = 0; i < 100; i++)
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2023.08.06",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> imagePaths = [
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
  'assets/images/imagelist.png',
];
