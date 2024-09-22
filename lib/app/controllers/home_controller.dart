import 'package:get/get.dart';

class HomeController extends GetxController {
  var room1Switch = false.obs;

  void toggleRoom1Switch(bool value) {
    room1Switch.value = value;
  }
}
