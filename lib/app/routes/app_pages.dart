import 'package:get/get.dart';
import 'package:ghmedic/app/modules/employee/employee_binding.dart';
import 'package:ghmedic/app/modules/employee/employee_page.dart';
import 'package:ghmedic/app/modules/home/home_binding.dart';
import 'package:ghmedic/app/modules/home/home_page.dart';
import 'package:ghmedic/app/modules/login/login_binding.dart';
import 'package:ghmedic/app/modules/login/login_page.dart';
import 'package:ghmedic/app/modules/splash/splash_binding.dart';
import 'package:ghmedic/app/modules/splash/splash_page.dart';
import 'package:ghmedic/app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 1),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.employee,
      page: () => EmployeePage(),
      binding: EmployeeBinding(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 1),
    ),
  ];
}
