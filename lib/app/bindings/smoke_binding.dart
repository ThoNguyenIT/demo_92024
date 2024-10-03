import 'package:get/get.dart';
import '../controllers/smoke_controller.dart';

class SmokeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SmokeController>(() => SmokeController());
  }
}
