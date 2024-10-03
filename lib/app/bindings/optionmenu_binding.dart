import 'package:get/get.dart';
import '../controllers/optionmenu_controller.dart';

class OptionmenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OptionmenuController>(() => OptionmenuController());
  }
}
