import 'package:getx_flutter_template/app/bindings/account_binding.dart';
import 'package:getx_flutter_template/app/bindings/camera_binding.dart';
import 'package:getx_flutter_template/app/bindings/changeroom_binding.dart';
import 'package:getx_flutter_template/app/bindings/degree_binding.dart';
import 'package:getx_flutter_template/app/bindings/home_binding.dart';
import 'package:getx_flutter_template/app/bindings/login_binding.dart';
import 'package:getx_flutter_template/app/bindings/optionmenu_binding.dart';
import 'package:getx_flutter_template/app/bindings/prerecord_binding.dart';
import 'package:getx_flutter_template/app/bindings/realtime_binding.dart';
import 'package:getx_flutter_template/app/bindings/smoke_binding.dart';
import 'package:getx_flutter_template/app/bindings/spark_binding.dart';
import 'package:getx_flutter_template/app/routes/app_routes.dart';
import 'package:getx_flutter_template/app/ui/pages/account_page/account_page.dart';
import 'package:getx_flutter_template/app/ui/pages/camera_page/camera_page.dart';
import 'package:getx_flutter_template/app/ui/pages/changeroom_page/changeroom_page.dart';
import 'package:getx_flutter_template/app/ui/pages/degree_page/degree_page.dart';
import 'package:getx_flutter_template/app/ui/pages/home_page/home_page.dart';
import 'package:getx_flutter_template/app/ui/pages/login_page/login_page.dart';
import 'package:getx_flutter_template/app/ui/pages/optionmenu_page/optionmenu_page.dart';
import 'package:getx_flutter_template/app/ui/pages/prerecord_page/prerecord_page.dart';
import 'package:getx_flutter_template/app/ui/pages/realtimeview_page/realtime_page.dart';
import 'package:getx_flutter_template/app/ui/pages/record_page/record_page.dart';
import 'package:getx_flutter_template/app/ui/pages/smokeview_page/smoke_page.dart';
import 'package:getx_flutter_template/app/ui/pages/spark_page/spark_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.optionmenu,
      page: () => OptionmenuPage(),
      binding: OptionmenuBinding(),
    ),
    GetPage(
      name: AppRoutes.account,
      page: () => AccountPage(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: AppRoutes.realtime,
      page: () => RealtimePage(),
      binding: RealtimeBinding(),
    ),
    GetPage(
      name: AppRoutes.camera,
      page: () => CameraPage(),
      binding: CameraBinding(),
    ),
    GetPage(
      name: AppRoutes.record,
      page: () => RecordPage(),
      binding: PrerecordBinding(),
    ),
    GetPage(
      name: AppRoutes.prerecord,
      page: () => PrerecordPage(),
      binding: PrerecordBinding(),
    ),
    GetPage(
      name: AppRoutes.spark,
      page: () => SparkPage(),
      binding: SparkBinding(),
    ),
    GetPage(
      name: AppRoutes.smoke,
      page: () => SmokePage(),
      binding: SmokeBinding(),
    ),
    GetPage(
      name: AppRoutes.degree,
      page: () => DegreePage(),
      binding: DegreeBinding(),
    ),
    GetPage(
      name: AppRoutes.changeroom,
      page: () => ChangeroomPage(),
      binding: ChangeroomBinding(),
    ),
  ];
}
