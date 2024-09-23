import 'package:demo_92024/app/bindings/cameraview_binding.dart';
import 'package:demo_92024/app/bindings/home_binding.dart';
import 'package:demo_92024/app/ui/pages/cameraview_page/cameraview_page.dart';
import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:get/get.dart';
import '../bindings/login_binding.dart';
import '../ui/pages/login_page/login_page.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/cameraview',
      page: () => const CameraviewPage(),
      binding: CameraviewBinding(),
    ),
  ];
}
