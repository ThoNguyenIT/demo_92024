import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/degreeview_controller.dart';

class DegreeviewPage extends GetView<DegreeviewController> {
  const DegreeviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.offAll(() => const HomePage());
          },
        ),
      ),
    );
  }
}
