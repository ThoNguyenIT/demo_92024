
import 'package:get/get.dart';
import '../controllers/popupdialog_controller.dart';


class PopupdialogBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PopupdialogController>(() => PopupdialogController());
  }
}