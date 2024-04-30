import '../../../core/app_export.dart';
import '../controller/light_mode_controller.dart';

/// A binding class for the LightModeScreen.
///
/// This class ensures that the LightModeController is created when the
/// LightModeScreen is first loaded.
class LightModeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LightModeController());
  }
}
