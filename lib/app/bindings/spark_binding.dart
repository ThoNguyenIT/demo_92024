import 'package:get/get.dart';
import '../controllers/spark_controller.dart';

class SparkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SparkController>(() => SparkController());
  }
}
