import 'package:getx_flutter_template/app/controllers/prerecord_controller.dart';
import 'package:get/get.dart';

class PrerecordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrerecordController>(() => PrerecordController());
  }
}
