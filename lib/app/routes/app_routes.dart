part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const intro = _Paths.intro;
  static const login = _Paths.login;
}

abstract class _Paths {
  _Paths._();
  static const intro = '/intro';
  static const login = '/login';
}
