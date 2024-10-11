import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/popupdialog_controller.dart';

class PopupdialogPage extends GetView<PopupdialogController> {
  const PopupdialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupdialogPage'),
      ),
      body: SafeArea(
        child: Text('PopupdialogController'),
      ),
    );
  }
}
