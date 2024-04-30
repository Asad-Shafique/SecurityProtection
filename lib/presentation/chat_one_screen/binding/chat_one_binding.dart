import '../../../core/app_export.dart';
import '../controller/chat_one_controller.dart';

/// A binding class for the ChatOneScreen.
///
/// This class ensures that the ChatOneController is created when the
/// ChatOneScreen is first loaded.
class ChatOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatOneController());
  }
}
