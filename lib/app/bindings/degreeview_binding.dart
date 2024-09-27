
import 'package:get/get.dart';
import '../controllers/degreeview_controller.dart';


class DegreeviewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DegreeviewController>(() => DegreeviewController());
  }
}