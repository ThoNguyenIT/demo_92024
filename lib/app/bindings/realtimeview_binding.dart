
import 'package:get/get.dart';
import '../controllers/realtimeview_controller.dart';


class RealtimeviewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RealtimeviewController>(() => RealtimeviewController());
  }
}