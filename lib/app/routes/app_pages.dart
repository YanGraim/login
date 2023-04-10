import 'package:get/get.dart';
import 'package:login/app/modules/cliente_screen/cliente_binding.dart';
import 'package:login/app/modules/cliente_screen/cliente_page.dart';

import '../modules/home_screen/Home_binding.dart';
import '../modules/home_screen/home_page.dart';
import '../modules/intro_screen/intro_binding.dart';
import '../modules/intro_screen/intro_page.dart';
import '../modules/login_screen/Login_binding.dart';
import '../modules/login_screen/login_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static get initial => Routes.intro;

  static final routes = [
    GetPage(
        name: Routes.intro,
        page: () => const IntroPage(),
        binding: IntroBinding()),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: Routes.cliente,
        page: () => const ClientePage(),
        binding: ClienteBinding())
  ];
}
