
import 'package:get/get.dart';
import '../controllers/dialogsns_controller.dart';


class DialogsnsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DialogsnsController>(() => DialogsnsController());
  }
}