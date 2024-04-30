import '../../../core/app_export.dart';
import '../controller/home_one_container_controller.dart';

/// A binding class for the HomeScreen.
///
/// This class ensures that the HomeController is created when the
/// HomeScreen is first loaded.
class HomeOneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeOneContainerController());
  }
}
