import 'package:get/get.dart';
import '../data/models/level_data.dart';

class HomeController extends GetxController {
  var isAutoMode = false.obs;
  var currentData = LevelData(isActive: false, level: 4).obs;

  void autoMode(bool value) {
    isAutoMode.value = value;
  }

  void activeExtinguisher() {
    currentData.update((val) {
      val!.isActive = !val.isActive;
    });
  }

  void setLevel(int newLevel) {
    currentData.update((val) => val!.level = newLevel);
  }
}
