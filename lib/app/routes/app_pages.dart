import 'package:get/get.dart';

import 'package:login/app/modules/login/LoginScreen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.intro;

  static final routes = [
    GetPage(name: _Paths.intro, page: () => const IntroScreen(), binding: IntroBinding()),
    GetPage(
      name: _Paths.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    )
  ];
}
