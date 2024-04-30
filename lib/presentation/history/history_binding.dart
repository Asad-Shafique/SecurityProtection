import 'package:talha_s_app/presentation/history/history_controller.dart';
import 'package:talha_s_app/presentation/profile/profile_screen_controller.dart';

import '../../../core/app_export.dart';

/// A binding class for the LoginScreen.
///
/// This class ensures that the LoginController is created when the
/// LoginScreen is first loaded.
class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryController());
  }
}
