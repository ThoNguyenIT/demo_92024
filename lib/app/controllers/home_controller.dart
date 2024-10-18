import 'package:getx_flutter_template/app/data/models/level_data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isAutoMode = false.obs;
  var isExpanded = false.obs;
  var currentData = LevelData(isActive: false, level: 4).obs;

  void autoMode(bool value) {
    isAutoMode.value = value;
    print("Auto/Manual was changed: $value");
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
