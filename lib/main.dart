import 'package:dm_project1/app/utils/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/controllers/auth_controller.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/error_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot) {
      if (snapshot.hasError) {
        return ErrorScreen();
      }
      // return GetMaterialApp(
      //   title: "IT Modeler",
      //   initialRoute: Routes.PROFILE,
      //   getPages: AppPages.routes,
      // );
      return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              title: "IT Modeler",
              initialRoute:
                  authC.isSkipIntro.isTrue ? Routes.HOME : Routes.LOGIN,
              getPages: AppPages.routes,
            );
          }
          return SplasScreen();
        },
      );
    });
  }
}
