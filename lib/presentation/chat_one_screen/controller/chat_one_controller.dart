import '../../../core/app_export.dart';
import '../models/chat_one_model.dart';

/// A controller class for the ChatOneScreen.
///
/// This class manages the state of the ChatOneScreen, including the
/// current chatOneModelObj
class ChatOneController extends GetxController {
  Rx<ChatOneModel> chatOneModelObj = ChatOneModel().obs;
}
