import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghmedic/app/routes/app_routes.dart';

class LoginController extends GetxController {
  bool showPassword = false;
  bool isLoggingIn = false;

  // Fields
  String _username = '';
  String _password = '';

  // Text Controllers
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onUsernameChanged(String text) {
    _username = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  void toggleShowPassword() {
    showPassword = !showPassword;
    update();
  }

  void validateFields() {
    if (usernameController.text.trim().isNotEmpty && passwordController.text.trim().isNotEmpty) {
      isLoggingIn = true;
      update();
      submit();
    } else {
      Get.snackbar('You cannot leave empty fields.','');
      isLoggingIn = false;
      update();
    }
  }

  Future submit() async {

    Future.delayed(
      Duration(seconds: 2),
          () async => Get.offNamed(AppRoutes.home),
    );
  }
}
