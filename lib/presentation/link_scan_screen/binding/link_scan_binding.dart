import '../../../core/app_export.dart';
import '../controller/link_scan_controller.dart';

/// A binding class for the LinkScanScreen.
///
/// This class ensures that the LinkScanController is created when the
/// LinkScanScreen is first loaded.
class LinkScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LinkScanController());
  }
}
