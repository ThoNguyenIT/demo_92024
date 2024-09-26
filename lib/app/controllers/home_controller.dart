// ignore_for_file: avoid_print

import 'package:get/get.dart';

class HomeController extends GetxController {
  var isSwitched = false.obs;
  var isImage1btnPressed = false.obs;
  var isImage2btnPressed = false.obs;
  var isImage3btnPressed = false.obs;
  var isImage4btnPressed = false.obs;
  var isImage5btnPressed = false.obs;
  var isImage6btnPressed = false.obs;

  void toogleSwitch(bool value) {
    isSwitched.value = value;
    print("Switch button changed: $value");
  }

  void image1btn() {
    isImage1btnPressed.value = !isImage1btnPressed.value;
    print("Image button 1 pressed: ${isImage1btnPressed.value}");
  }

  void image2btn() {
    isImage2btnPressed.value = !isImage2btnPressed.value;
    print("Image button 2 pressed: ${isImage2btnPressed.value}");
  }

  void image3btn() {
    isImage3btnPressed.value = !isImage3btnPressed.value;
    print("Image button 3 pressed: ${isImage3btnPressed.value}");
  }

  void image4btn() {
    isImage4btnPressed.value = !isImage4btnPressed.value;
    print("Image button 4 pressed: ${isImage4btnPressed.value}");
  }

  void image5btn() {
    isImage5btnPressed.value = !isImage5btnPressed.value;
    print("Image button 5 pressed: ${isImage5btnPressed.value}");
  }

  void image6btn() {
    isImage6btnPressed.value = !isImage6btnPressed.value;
    print("Image button 6 pressed: ${isImage6btnPressed.value}");
  }
}
