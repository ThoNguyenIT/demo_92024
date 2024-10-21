import 'package:get/get.dart';
import '../controllers/changeroom_controller.dart';

class ChangeroomBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeroomController>(() => ChangeroomController());
  }
}
