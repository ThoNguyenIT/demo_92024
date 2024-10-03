// ignore_for_file: unused_import, library_private_types_in_public_api
import 'package:badges/badges.dart' as badges;
import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:demo_92024/app/ui/global_widgets/global_badge.dart';
import 'package:demo_92024/app/ui/pages/camera_page/camera_page.dart';
import 'package:demo_92024/app/ui/pages/degree_page/degree_page.dart';
import 'package:demo_92024/app/ui/pages/record_page/record_page.dart';
import 'package:demo_92024/app/ui/pages/realtimeview_page/realtimeview_page.dart';
import 'package:demo_92024/app/ui/pages/smokeview_page/smoke_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Room1Page extends StatefulWidget {
  const Room1Page({super.key});

  @override
  _Room1PageState createState() => _Room1PageState();
}

class _Room1PageState extends State<Room1Page> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Switch(
                          value: controller.isAutoMode.value,
                          onChanged: (bool newValue) {
                            controller.toogleSwitch(newValue);
                          },
                          activeColor: Colors.blue,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.grey[300],
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.isAutoMode.value ? 'Auto' : 'Manual',
                          style: TextStyle(
                            fontSize: 18,
                            color: controller.isAutoMode.value
                                ? Colors.blue
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/images/room1.png',
                            ),
                          ),
                          SizedBox(width: 10),
                          const Text(
                            'Room 1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/images/room2.png',
                            ),
                          ),
                          SizedBox(width: 10),
                          const Text(
                            'Room 2',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/images/room3.png',
                            ),
                          ),
                          SizedBox(width: 10),
                          const Text(
                            'Room 3',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  controller.toggleActive();
                },
                child: Obx(
                  () => Image.asset(
                    controller.currentData.value.imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    isExpanded = !isExpanded;
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              child: Text(
                '접기',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 10),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.slowMiddle,
              child: Visibility(
                visible: isExpanded,
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 185, 178, 178),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GlobalBadge(
                                    showBadge: true,
                                    onTap: () {
                                      Get.to(() => const CameraPage());
                                    },
                                    child: Image.asset(
                                      'assets/images/1.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  GlobalBadge(
                                    showBadge: false,
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/2.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  GlobalBadge(
                                    showBadge: true,
                                    onTap: () {
                                      Get.to(() => const RecordPage());
                                    },
                                    child: Image.asset(
                                      'assets/images/3.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GlobalBadge(
                                    showBadge: false,
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/4.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  GlobalBadge(
                                    showBadge: true,
                                    onTap: () {
                                      Get.to(() => const SmokePage());
                                    },
                                    child: Image.asset(
                                      'assets/images/5.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  GlobalBadge(
                                    showBadge: true,
                                    onTap: () {
                                      Get.to(() => const DegreePage());
                                    },
                                    child: Image.asset(
                                      'assets/images/6.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                PopupDialog.showPopup(context);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
              ),
              child: Text(
                'Pop Dialog from sns',
                style: TextStyle(color: Colors.white),
              ),
            ),
            /* ...List.generate(
              5,
              (index) => ElevatedButton(
                onPressed: () => controller.setLevel(index + 1),
                child: Text('Set Level ${index + 1}'),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}

class PopupDialog {
  static void showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.warning, color: Colors.yellow, size: 30),
                    SizedBox(width: 10),
                    Text(
                      "상황발생",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "발생 시간:",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "2023/08/10 10:45:30",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 8,
                        child: Image.asset(
                          'assets/images/chart.png',
                          height: 200,
                          width: 300,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        child: Row(
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
                                          style: TextStyle(color: Colors.white),
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
                                          style: TextStyle(color: Colors.black),
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
                                          style: TextStyle(color: Colors.black),
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
                                          style: TextStyle(color: Colors.white),
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
                                          style: TextStyle(color: Colors.black),
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
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Image.asset(
                            imagePaths[index],
                            width: 50,
                            height: 50,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "소화 화면으로",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "이동하시겠습니까 ?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RealtimeviewPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: const Size(100, 50),
                      ),
                      child: const Text(
                        "YES",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                        "NO",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
