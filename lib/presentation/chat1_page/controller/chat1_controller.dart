import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/chat1_page/models/chat1_model.dart';

import '../../chat_tab_container_screen/models/chat_tab_container_model.dart';/// A controller class for the Chat1Page.
///
/// This class manages the state of the Chat1Page, including the
/// current chat1ModelObj
class Chat1Controller extends GetxController {Chat1Controller(this.chat1ModelObj);

Rx<Chat1Model> chat1ModelObj;

List<TabChatModel> categoryList = ChatTabContainerModel.getCategories();


 }
