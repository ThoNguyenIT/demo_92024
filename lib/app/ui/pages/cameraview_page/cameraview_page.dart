import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import '../../../controllers/cameraview_controller.dart';

class CameraviewPage extends GetView<CameraviewController> {
  const CameraviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera View'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 100),
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle the settings action
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: ImageSlideshow(
                width: double.infinity,
                height: 400,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                autoPlayInterval: 9000,
                isLoop: true,
                children: [
                  Image.asset('assets/images/home.png', fit: BoxFit.cover),
                  Image.asset('assets/images/home1.png', fit: BoxFit.cover),
                  Image.asset('assets/images/home2.png', fit: BoxFit.cover),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Bottom',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
