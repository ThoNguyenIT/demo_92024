import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:demo_92024/app/ui/global_widgets/global_badge.dart';
import 'package:demo_92024/app/ui/pages/camera_page/camera_page.dart';
import 'package:demo_92024/app/ui/pages/degree_page/degree_page.dart';
import 'package:demo_92024/app/ui/pages/record_page/record_page.dart';
import 'package:demo_92024/app/ui/pages/realtimeview_page/realtime_page.dart';
import 'package:demo_92024/app/ui/pages/smokeview_page/smoke_page.dart';
import 'package:demo_92024/app/ui/pages/spark_page/spark_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                          inactiveTrackColor: Colors.white,
                        ),
                      ),
                      Text(
                        '수동 모드',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
                          Text(
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
                          Text(
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
                          Text(
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Switch(
                    value: isExpanded,
                    onChanged: (bool value) {
                      setState(
                        () {
                          isExpanded = value;
                        },
                      );
                    },
                    activeColor: Colors.blue,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.white,
                  ),
                  Text(
                    '센서 보기',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 5000),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Visibility(
                visible: isExpanded,
                child: Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 215, 208, 208),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GlobalBadge(
                                    showBadge: true,
                                    onTap: () {
                                      Get.to(() => CameraPage());
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
                                      Get.to(() => RecordPage());
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
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GlobalBadge(
                                    showBadge: false,
                                    onTap: () {
                                      Get.to(() => SparkPage());
                                    },
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
                                      Get.to(() => SmokePage());
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
                                      Get.to(() => DegreePage());
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
            TextButton(
              onPressed: () {
                DialogSNS.showPopup(context);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
              ),
              child: Text(
                'Pop Dialog from sns',
                style: TextStyle(color: Colors.white),
              ),
            ),
            /*
            ...List.generate(
              5,
              (index) => ElevatedButton(
                onPressed: () => controller.setLevel(index + 1),
                child: Text('Set Level ${index + 1}'),
              ),
            ),
            */
          ],
        ),
      ),
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

class DialogSNS {
  static void showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final HomeController controller = Get.put(HomeController());
        return AlertDialog(
          backgroundColor: Colors.white,
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warning,
                          color: Colors.yellow,
                          size: 35,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "상황발생",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.warning,
                          color: Colors.yellow,
                          size: 35,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "발생 시간:",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2023/08/10 10:45:30",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
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
                                Text(
                                  "성남호",
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
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
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
                                Text(
                                  "판교호",
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
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
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
                                Text(
                                  "분당호",
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
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
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
                                Text(
                                  "방1",
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
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
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
                                Text(
                                  "방2",
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
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
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
                                Text(
                                  "방3",
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
                SizedBox(height: 10),
                Obx(
                  () => Image.asset(
                    controller.currentData.value.imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
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
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "소화 화면으로",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "이동하시겠습니까 ?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
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
                            builder: (context) => RealtimePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: Size(100, 50),
                      ),
                      child: Text(
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
                        minimumSize: Size(100, 50),
                      ),
                      child: Text(
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
