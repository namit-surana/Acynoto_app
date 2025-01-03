import '../../../core/utils/image_constant.dart';

class ChatTabContainerModel {
  static List<TabChatModel> getCategories() {
    return [
      TabChatModel(ImageConstant.chatOne, "Dr. esther howard" , 'Hello are you here', '20:00 PM'),
      TabChatModel(ImageConstant.chatTwo, "Dr. robert fox" , 'Hello...', '18:00 PM'),
      TabChatModel(ImageConstant.chatThree, "Dr. leslie alexander" ,"Fine", '15:00 PM'),
      TabChatModel(ImageConstant.chatFour, "Dr. jenny wilson" ,'Awesome', '09:00 PM'),
      TabChatModel(ImageConstant.chatFive, "Dr. kristin watson" ,'Buddy WhatsApp', '10:00 PM'),
      TabChatModel(ImageConstant.chatSix, "Dr. ralph edwards " ,"Hii ", '12:00 PM'),
    ];
  }
}

class TabChatModel {
  String? image;
  String? name;
  String? msg;
  String? time;

  TabChatModel(
    this.image,
    this.name,
    this.msg,
    this.time,
  );
}
