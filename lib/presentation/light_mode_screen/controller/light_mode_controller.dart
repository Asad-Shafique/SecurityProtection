import '../../../core/app_export.dart';
import '../models/light_mode_model.dart';

/// A controller class for the LightModeScreen.
///
/// This class manages the state of the LightModeScreen, including the
/// current lightModeModelObj
class LightModeController extends GetxController {
  Rx<LightModeModel> lightModeModelObj = LightModeModel().obs;
  PrefUtils prefUtils = PrefUtils();
  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () async {
      String? email = await prefUtils.retrieveData('email');
      if (email == null || email!.isEmpty) {
        Get.offNamed(
          AppRoutes.homeScreen,
        );
      } else {
        Get.offNamed(
          AppRoutes.homeOneContainerPage,
        );
      }
    });
  }
}
