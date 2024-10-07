import 'package:demo_92024/app/controllers/prerecord_controller.dart';
import 'package:get/get.dart';

class PrerecordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrerecordController>(() => PrerecordController());
  }
}
