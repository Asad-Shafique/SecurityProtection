import 'package:talha_s_app/presentation/login/controller/login_controller.dart';

import '../../../core/app_export.dart';

/// A binding class for the SignUpScreen.
///
/// This class ensures that the SignUpController is created when the
/// SignUpScreen is first loaded.
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
