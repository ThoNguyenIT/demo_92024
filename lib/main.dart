import 'package:demo_92024/app/bindings/cameraview_binding.dart';
import 'package:demo_92024/app/ui/pages/cameraview_page/cameraview_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialBinding: CameraviewBinding(),
      home: const CameraviewPage(),
      getPages: AppPages.pages,
    );
  }
}
