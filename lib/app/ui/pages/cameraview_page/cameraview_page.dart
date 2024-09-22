
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/cameraview_controller.dart';


class CameraviewPage extends GetView<CameraviewController> {
  const CameraviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CameraviewPage'),
      ),
      body: const SafeArea(
        child: Text('CameraviewController'),
      ),
    );
  }
}
  