import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/chat_one_page/models/chat_one_model.dart';/// A controller class for the ChatOnePage.
///
/// This class manages the state of the ChatOnePage, including the
/// current chatOneModelObj
class ChatOneController extends GetxController {ChatOneController(this.chatOneModelObj);

Rx<ChatOneModel> chatOneModelObj;

List<TabCallModel> categoryList = ChatOneModel.getCategories();


 }
