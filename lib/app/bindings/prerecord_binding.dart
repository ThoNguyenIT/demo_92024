
import 'package:get/get.dart';
import '../controllers/prerecord_controller.dart';


class PrerecordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrerecordController>(() => PrerecordController());
  }
}