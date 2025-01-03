import '../../../core/app_export.dart';

/// This class defines the variables used in the [chat_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatOneModel {
  // Rx<List<Userprofilecard1ItemModel>> userprofilecard1ItemList =
  //     Rx(List.generate(6, (index) => Userprofilecard1ItemModel()));

  static List<TabCallModel> getCategories() {
    return [
      TabCallModel(ImageConstant.chatOne, "Dr. esther howard",
          'Outgoing | Dec 20, 2023', false),
      TabCallModel(ImageConstant.chatTwo, "Dr. robert fox",
          'Outgoing | Dec 20, 2023', true),
      TabCallModel(ImageConstant.chatThree, "Dr. leslie alexander",
          "Outgoing | Dec 20, 2023", false),
      TabCallModel(ImageConstant.chatFour, "Dr. jenny wilson",
          'Outgoing | Dec 20, 2023', true),
      TabCallModel(ImageConstant.chatFive, "Dr. kristin watson",
          'Outgoing | Dec 20, 2023', false),
      TabCallModel(ImageConstant.chatSix, "Dr. ralph edwards ",
          "Outgoing | Dec 20, 2023", true),
    ];
  }
}

class TabCallModel {
  String? image;
  String? name;
  String? msg;
  bool? isVdCall;

  TabCallModel(
    this.image,
    this.name,
    this.msg,
    this.isVdCall,
  );
}
