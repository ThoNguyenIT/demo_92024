import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:demo_92024/app/ui/pages/cameraview_page/cameraview_page.dart';
import 'package:demo_92024/app/ui/pages/degreeview_page/degreeview_page.dart';
import 'package:demo_92024/app/ui/pages/prerecord_page/prerecord_page.dart';
import 'package:demo_92024/app/ui/pages/smokeview_page/smokeview_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Room1Page extends StatelessWidget {
  const Room1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller =
        Get.put(HomeController()); /* Get.find<HomeController>(); */
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
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
            Stack(
              children: [
                Align(
                  heightFactor: 0.9,
                  child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        showLabels: false,
                        showAxisLine: false,
                        showTicks: false,
                        minimum: 0,
                        maximum: 10,
                        ranges: <GaugeRange>[
                          GaugeRange(
                            startValue: 1,
                            endValue: 3,
                            color: const Color.fromRGBO(187, 185, 206, 69),
                            label: 'Mức 1',
                            sizeUnit: GaugeSizeUnit.factor,
                            labelStyle: const GaugeTextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            startWidth: 0.7,
                            endWidth: 0.7,
                          ),
                          GaugeRange(
                            startValue: 3,
                            endValue: 5,
                            color: const Color.fromRGBO(241, 201, 69, 69),
                            label: 'Mức 2',
                            labelStyle: const GaugeTextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            startWidth: 0.7,
                            endWidth: 0.7,
                            sizeUnit: GaugeSizeUnit.factor,
                          ),
                          GaugeRange(
                            startValue: 5,
                            endValue: 7,
                            color: const Color.fromRGBO(97, 97, 131, 69),
                            label: 'Mức 3',
                            labelStyle: const GaugeTextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            sizeUnit: GaugeSizeUnit.factor,
                            startWidth: 0.7,
                            endWidth: 0.7,
                          ),
                          GaugeRange(
                            startValue: 7,
                            endValue: 9,
                            color: const Color.fromRGBO(57, 57, 91, 69),
                            label: 'Mức 4',
                            labelStyle: const GaugeTextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            sizeUnit: GaugeSizeUnit.factor,
                            startWidth: 0.7,
                            endWidth: 0.7,
                          ),
                        ],
                        pointers: const <GaugePointer>[
                          NeedlePointer(
                            value: 2, // TODO: your data
                            needleColor: Colors.white,
                            needleLength: 0.55,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 107,
                  left: 150,
                  right: 150,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 122, 122, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(90),
                        topRight: Radius.circular(90),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '소 화',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
                              onTap: () {
                                Get.to(() => const CameraviewPage());
                              },
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
                              onTap: () {
                                Get.to(() => const PrerecordPage());
                              },
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
                              onTap: () {
                                Get.to(() => const SmokeviewPage());
                              },
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
                              onTap: () {
                                Get.to(() => const DegreeviewPage());
                              },
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
