
import 'package:get/get.dart';
import '../controllers/smokeview_controller.dart';


class SmokeviewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SmokeviewController>(() => SmokeviewController());
  }
}