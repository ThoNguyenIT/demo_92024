import 'package:get/get.dart';

class RealtimeController extends GetxController {
  var operatedExtinguisher = false.obs;

  void extinguisherBtn() {
    operatedExtinguisher.value = true;
  }
}
