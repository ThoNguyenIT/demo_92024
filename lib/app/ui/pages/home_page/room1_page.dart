import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:demo_92024/app/ui/pages/realtimeview_page/realtimeview_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Room1Page extends StatelessWidget {
  const Room1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 350,
              child: Stack(
                children: [
                  Positioned(
                    top: 80,
                    left: 30,
                    child: Image.asset(
                      'assets/images/chart.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Obx(
                                () => Switch(
                                  value: controller.isSwitched.value,
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
                                  controller.isSwitched.value
                                      ? 'Auto'
                                      : 'Manual',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: controller.isSwitched.value
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
                                  Image.asset(
                                    'assets/images/room1.png',
                                    width: 50,
                                    height: 50,
                                  ),
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
                                  Image.asset(
                                    'assets/images/room2.png',
                                    width: 50,
                                    height: 50,
                                  ),
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
                                  Image.asset(
                                    'assets/images/room3.png',
                                    width: 50,
                                    height: 50,
                                  ),
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
                  ),
                  Positioned(
                    top: 210,
                    left: 137,
                    child: InkWell(
                      onTap: () {
                        PopupDialog.showPopup(context);
                      },
                      child: Image.asset(
                        'assets/images/bigbutton2.png',
                        /* width: double.infinity,
                        height: double.infinity, */
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: const Text(
                      '접기',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  iconColor: Colors.black,
                  backgroundColor: Colors.white,
                  collapsedBackgroundColor: Colors.white,
                  collapsedIconColor: Colors.black,
                  tilePadding: const EdgeInsets.only(left: 110, right: 110),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: controller.image1btn,
                              child: /* Obx(
                                () =>  */
                                  Image.asset(
                                'assets/images/1.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //),
                            const Text('AI 카메라'),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: controller.image2btn,
                              child: /* Obx(
                                () =>  */
                                  Image.asset(
                                'assets/images/2.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //),
                            const Text('열화상 카메라'),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: controller.image3btn,
                              child: /* Obx(
                                () =>  */
                                  Image.asset(
                                'assets/images/3.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //),
                            const Text('기록'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: controller.image4btn,
                              child: /* Obx(
                                () =>  */
                                  Image.asset(
                                'assets/images/4.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //),
                            const Text('불꽃 센서'),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: controller.image5btn,
                              child: /* Obx(
                                () =>  */
                                  Image.asset(
                                'assets/images/5.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //),
                            const Text('연기 센서'),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: controller.image6btn,
                              child: /* Obx(
                                () =>  */
                                  Image.asset(
                                'assets/images/6.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //),
                            const Text('온습도 센서'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                                        left: 10, right: 10),
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
                                        left: 10, right: 10),
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
                                        left: 10, right: 10),
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
                                        left: 10, right: 10),
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
                                        left: 10, right: 10),
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
                                        left: 10, right: 10),
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
  //'assets/images/6.png',
];
