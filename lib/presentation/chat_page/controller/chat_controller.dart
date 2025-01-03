import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/chat_page/models/chat_model.dart';

/// A controller class for the ChatPage.
///
/// This class manages the state of the ChatPage, including the
/// current chatModelObj
class ChatController extends GetxController {
  ChatController(this.chatModelObj);

  Rx<ChatModel> chatModelObj;
}
