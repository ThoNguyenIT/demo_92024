import 'package:demo_92024/app/bindings/camera_binding.dart';
import 'package:demo_92024/app/bindings/degree_binding.dart';
import 'package:demo_92024/app/bindings/home_binding.dart';
import 'package:demo_92024/app/bindings/login_binding.dart';
import 'package:demo_92024/app/bindings/optionmenu_binding.dart';
import 'package:demo_92024/app/bindings/prerecord_binding.dart';
import 'package:demo_92024/app/bindings/realtimeview_binding.dart';
import 'package:demo_92024/app/bindings/smoke_binding.dart';
import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:demo_92024/app/ui/pages/camera_page/camera_page.dart';
import 'package:demo_92024/app/ui/pages/degree_page/degree_page.dart';
import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:demo_92024/app/ui/pages/login_page/login_page.dart';
import 'package:demo_92024/app/ui/pages/optionmenu_page/optionmenu_page.dart';
import 'package:demo_92024/app/ui/pages/prerecord_page/prerecord_page.dart';
import 'package:demo_92024/app/ui/pages/realtimeview_page/realtimeview_page.dart';
import 'package:demo_92024/app/ui/pages/record_page/record_page.dart';
import 'package:demo_92024/app/ui/pages/smokeview_page/smoke_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.optionmenu,
      page: () => const OptionmenuPage(),
      binding: OptionmenuBinding(),
    ),
    GetPage(
      name: AppRoutes.realtimeview,
      page: () => const RealtimeviewPage(),
      binding: RealtimeviewBinding(),
    ),
    GetPage(
      name: AppRoutes.cameraview,
      page: () => const CameraPage(),
      binding: CameraBinding(),
    ),
    GetPage(
      name: AppRoutes.record,
      page: () => const RecordPage(),
      binding: PrerecordBinding(),
    ),
    GetPage(
      name: AppRoutes.prerecord,
      page: () => const PrerecordPage(),
      binding: PrerecordBinding(),
    ),
    /*
    GetPage(
      name: AppRoutes.spark,
      page: () => const SparkPage(),
      binding: SparkBinding(),
    ),
    */
    GetPage(
      name: AppRoutes.smoke,
      page: () => const SmokePage(),
      binding: SmokeBinding(),
    ),
    GetPage(
      name: AppRoutes.degree,
      page: () => const DegreePage(),
      binding: DegreeBinding(),
    ),
  ];
}
