import 'package:talha_s_app/presentation/chat_one_screen/binding/chat_one_binding.dart';
import 'package:talha_s_app/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:talha_s_app/presentation/history/history_binding.dart';
import 'package:talha_s_app/presentation/history/history_screen.dart';
import 'package:talha_s_app/presentation/home_one_container_page/binding/home_one_container_binding.dart';
import 'package:talha_s_app/presentation/home_one_container_page/controller/home_one_container_controller.dart';
import 'package:talha_s_app/presentation/home_one_container_page/home_one_container_page.dart';
import 'package:talha_s_app/presentation/link_scan_screen/binding/link_scan_binding.dart';
import 'package:talha_s_app/presentation/link_scan_screen/link_scan_screen.dart';
import 'package:talha_s_app/presentation/link_scan_two_screen/binding/link_scan_two_binding.dart';
import 'package:talha_s_app/presentation/link_scan_two_screen/link_report.dart';
import 'package:talha_s_app/presentation/link_scan_two_screen/link_scan_two_screen.dart';
import 'package:talha_s_app/presentation/profile/profile_binding.dart';
import 'package:talha_s_app/presentation/profile/profile_screen.dart';
import 'package:talha_s_app/presentation/profile/profile_screen_controller.dart';
import 'package:talha_s_app/presentation/qr_scanner/qr_scanner.dart';
import 'package:talha_s_app/presentation/setting_screen/binding/setting_binding.dart';
import 'package:talha_s_app/presentation/setting_screen/setting_screen.dart';
import 'package:talha_s_app/presentation/sign_up/binding/signup_binding.dart';

import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/light_mode_screen/binding/light_mode_binding.dart';
import '../presentation/light_mode_screen/light_mode_screen.dart';
import '../presentation/sign_up/signup.dart';
import '../presentation/login/binding/login_binding.dart';
import '../presentation/login/login.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String lightModeScreen = '/light_mode_screen';

  static const String homeScreen = '/home_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeOneContainerPage = '/home_one_container_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String linkScanScreen = '/linkScanScreen';
  static const String linkScanSecondScreen = '/linkScanSecondScreen';
  static const String settingsScreen = '/settings';
  static const String chatScreen = '/chat';
  static const String linkReport = '/linkReport';
  static const String qrScreen = '/qrScreen';
  static const String profileScreen = '/profileScreen';
  static const String historyScreen = '/historyScreen';

  static List<GetPage> pages = [
    GetPage(
      name: lightModeScreen,
      page: () => LightModeScreen(),
      bindings: [LightModeBinding()],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeBinding()],
    ),
    GetPage(
      name: homeOneContainerPage,
      page: () => HomeOneContainerPage(),
      //bindings: [HomeOneContainerBinding()],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignupScreen(),
      bindings: [SignupBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => LightModeScreen(),
      bindings: [LightModeBinding()],
    ),
    GetPage(
      name: linkScanScreen,
      page: () => LinkScanScreen(),
      bindings: [LinkScanBinding()],
    ),
    GetPage(
      name: linkScanSecondScreen,
      page: () => LinkScanTwoScreen(),
      bindings: [LinkScanTwoBinding()],
    ),
    GetPage(
      name: linkReport,
      page: () => LinkReport(),
      bindings: [LinkScanTwoBinding()],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingScreen(),
      bindings: [SettingBinding()],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatOneScreen(),
      bindings: [ChatOneBinding()],
    ),
    GetPage(
      name: qrScreen,
      page: () => QRScannerScreen(),
      bindings: [LinkScanBinding()],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [ProfileBinding()],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [HistoryBinding()],
    )
  ];
}
