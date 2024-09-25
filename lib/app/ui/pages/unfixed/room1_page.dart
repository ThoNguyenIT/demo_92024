/* // ignore_for_file: library_private_types_in_public_api

import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Room1Page extends StatefulWidget {
  const Room1Page({super.key});

  @override
  _Room1State createState() => _Room1State();
}

class _Room1State extends State<Room1Page> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/1.png',
      'assets/images/2.png',
      'assets/images/3.png',
      'assets/images/4.png',
      'assets/images/5.png',
      'assets/images/6.png',
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SwitchButton(controller: controller),
                const RoomColumn(),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  'assets/images/chart.png',
                  fit: BoxFit.cover,
                  height: 150,
                  width: 350,
                ),
              ),
              Positioned(
                left: 102,
                top: 112,
                child: Image.asset(
                  'assets/images/bigbutton2.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('접기'),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  children: List.generate(6, (index) {
                    return ElevatedButton(
                      onPressed: () {
                        print("Button $index pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            imagePaths[index],
                            width: 120,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SwitchButton extends StatelessWidget {
  final HomeController controller;

  const SwitchButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Switch(
            value: controller.isSwitched.value,
            onChanged: (bool newValue) {
              controller.toogleSwitch(newValue);
              print("Switch button changed");
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.grey[300],
          ),
          const SizedBox(width: 10),
          Text(
            controller.isSwitched.value ? 'Auto' : 'Manual',
            style: TextStyle(
              fontSize: 18,
              color: controller.isSwitched.value ? Colors.blue : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class RoomColumn extends StatelessWidget {
  const RoomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoomItem(imagePath: "assets/images/room1.png", roomName: "ROOM1"),
        RoomItem(imagePath: "assets/images/room2.png", roomName: "ROOM2"),
        RoomItem(imagePath: "assets/images/room3.png", roomName: "ROOM3"),
      ],
    );
  }
}

class RoomItem extends StatelessWidget {
  final String imagePath;
  final String roomName;

  const RoomItem({super.key, required this.imagePath, required this.roomName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 22,
          height: 22,
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        const SizedBox(width: 10),
        Text(
          roomName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
 */