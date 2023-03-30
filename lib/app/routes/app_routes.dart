part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const home = _Paths.home;
  static const intro = _Paths.intro;
  static const login = _Paths.login;
}

abstract class _Paths {
  _Paths._();
  static const home = '/home';
  static const intro = '/intro';
  static const login = '/login';
}