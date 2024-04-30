import '../../../core/app_export.dart';
import '../controller/setting_controller.dart';

/// A binding class for the SettingScreen.
///
/// This class ensures that the SettingController is created when the
/// SettingScreen is first loaded.
class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
