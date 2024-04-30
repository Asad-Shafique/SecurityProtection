import '../../../core/app_export.dart';
import '../controller/link_scan_two_controller.dart';

/// A binding class for the LinkScanTwoScreen.
///
/// This class ensures that the LinkScanTwoController is created when the
/// LinkScanTwoScreen is first loaded.
class LinkScanTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LinkScanTwoController());
  }
}
