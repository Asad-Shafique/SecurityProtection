import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefUtils();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyCFe_nIr6c6YcJMqgW4jWHKoInyMyKrQ0w',
          appId: '1:278324313465:android:d43c575834e76964dd03a8',
          messagingSenderId: '278324313465',
          projectId: 'securityprotection-924d9'));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        defaultTransition: Transition.rightToLeft,
        debugShowCheckedModeBanner: false,
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale,
        fallbackLocale: Locale('en', 'US'),
        title: 'Security Protection',
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
      );
    });
  }
}
