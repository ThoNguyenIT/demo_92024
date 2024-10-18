import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Room2Page extends StatefulWidget {
  const Room2Page({super.key});
  @override
  _Room2PageState createState() => _Room2PageState();
}

class _Room2PageState extends State<Room2Page> {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Switch(
                activeColor: Colors.blue,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.white,
                value: controller.isAutoMode.value,
                onChanged: (bool newValue) => controller.autoMode(newValue),
              ),
            ),
            Text(
              '수동 모드',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
