import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:demo_92024/app/ui/pages/prerecord_page/prerecord_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/record_controller.dart';

class RecordPage extends GetView<RecordController> {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Scrollbar(
              interactive: false,
              radius: Radius.circular(90),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "감지/영상 보기",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_right_sharp,
                              size: 30,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Get.to(() => const PrerecordPage());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  //for (var i = 0; i < 6; i++)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "타임랩스 영상 보기",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_right_sharp,
                              size: 30,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Get.to(() => const PrerecordPage());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
