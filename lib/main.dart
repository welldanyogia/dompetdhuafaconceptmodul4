import 'package:dompetdhuafaconceptmodul4/app/modules/signin/controllers/signin_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/handler/notification_handler.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize SharedPreferences before GetMaterialApp
  await Get.putAsync(() async => await SharedPreferences.getInstance());

  final SigninController controller = Get.put(SigninController());
  await FirebaseMessagingHandler().initPushNotification();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: controller.isLogin.value ? Routes.HOME : Routes.SIGNIN,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
