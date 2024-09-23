import 'package:get/get.dart';

class HomeController extends GetxController {
  var isSwitched = false.obs;
  var isOpen = false.obs;

  void toogleSwitch(bool value) {
    isSwitched.value = value;
  }

  void drawer() {
    isOpen.value = !isOpen.value;
  }
}
