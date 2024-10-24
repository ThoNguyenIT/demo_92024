import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/camera_controller.dart';
import '../../../routes/app_routes.dart';

class CameraPage extends GetView<CameraController> {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CameraController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Get.offAllNamed(AppRoutes.home),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Your Video is here',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Image.asset(imagePaths[index],
                        height: 60, width: 60, fit: BoxFit.contain),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: Scrollbar(
              interactive: false,
              thickness: 10,
              radius: Radius.circular(90),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 3, color: Colors.blue),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "2023.08.07",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
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
