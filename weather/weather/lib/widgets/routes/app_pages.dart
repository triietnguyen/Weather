// ignore_for_file: non_constant_identifier_names
import 'package:get/get.dart';
import 'package:weather/page/home/home_binding.dart';
import 'package:weather/page/home/view.dart';

part './app_routes.dart';

class AppPages {
  const AppPages._();

  // ignore: constant_identifier_names
  static var INITIAL = Routes.HOME;

  static final pages = [
    // Middleware
    // Authentication
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
