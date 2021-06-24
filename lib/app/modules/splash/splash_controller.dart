import 'package:get/get.dart';
import 'package:ghmedic/app/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    // TODO verify local session and navigate to correct page
    // checkLocalSettings();
    super.onReady();
    Future.delayed(
      Duration(seconds: 2),
      () async => Get.offNamed(AppRoutes.login),
    );
  }
}
