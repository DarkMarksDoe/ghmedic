import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghmedic/app/modules/splash/splash_binding.dart';
import 'package:ghmedic/app/modules/splash/splash_page.dart';
import 'package:ghmedic/app/routes/app_pages.dart';
import 'package:ghmedic/app/utils/dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GH Medic',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
