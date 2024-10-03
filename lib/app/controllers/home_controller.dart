// ignore_for_file: avoid_print
import 'package:demo_92024/app/data/models/level_data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isAutoMode = false.obs;
  var isExpanded = false.obs;

  var currentData = LevelData(isActive: false, level: 4).obs;

  void toogleSwitch(bool value) {
    isAutoMode.value = value;
    print("Auto/Manual was changed: $value");
  }

  void toggleExpaned(bool value) {
    isExpanded.value = value;
    print("isExpanded was changed: $value");
  }

  void toggleActive() {
    currentData.update((val) {
      val!.isActive = !val.isActive;
    });
  }

  void setLevel(int newLevel) {
    currentData.update(
      (val) {
        val!.level = newLevel;
      },
    );
  }
}
