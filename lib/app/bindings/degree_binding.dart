import 'package:get/get.dart';
import '../controllers/degree_controller.dart';

class DegreeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DegreeController>(() => DegreeController());
  }
}
