import 'package:demo_92024/app/bindings/home_binding.dart';
import 'package:demo_92024/app/bindings/realtimeview_binding.dart';
import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:demo_92024/app/ui/pages/realtimeview_page/realtimeview_page.dart';
import 'package:get/get.dart';
import '../bindings/login_binding.dart';
import '../ui/pages/login_page/login_page.dart';

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
      name: AppRoutes.realtimeview,
      page: () => const RealtimeviewPage(),
      binding: RealtimeviewBinding(),
    ),
  ];
}
