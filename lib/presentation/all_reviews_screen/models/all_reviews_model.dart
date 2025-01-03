import '../../../core/app_export.dart';

/// This class defines the variables used in the [all_reviews_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllReviewsModel {
  // Rx<List<Userprofile1ItemModel>> userprofile1ItemList =
  //     Rx(List.generate(4, (index) => Userprofile1ItemModel()));

  static List<AllReviewItemsModel> getAllReviews() {
    return [
      AllReviewItemsModel(ImageConstant.reviewOne, "Ralph Edwards",
          "Dr. esther edwards is the best doctor I've ever seen. he is so knowledgeable and caring."),
      AllReviewItemsModel(ImageConstant.reviewTwo, "Ronald richards",
          'Dr. esther edwards is the best doctor I\'ve ever seen. He is so knowledgeable and caring, and he always takes the time to listen to me and explain everything thoroughly.'),
      AllReviewItemsModel(ImageConstant.reviewThree, "Robert fox",
          "Dr. ether edwards always takes the time to listen to me and explain everything thoroughly."),
      AllReviewItemsModel(ImageConstant.reviewFour, "John richards",
          "I've been seeing Dr. esther edwards for years, and I've always been impressed with his expertise and compassion."),
      AllReviewItemsModel(ImageConstant.reviewFive, "Ralph Edwards",
          'Dr. esther edwards is the best doctor I\'ve ever seen. he is so knowledgeable and caring.'),
    ];
  }
}

class AllReviewItemsModel {
  String? image;
  String? name;
  String? msg;

  AllReviewItemsModel(
    this.image,
    this.name,
    this.msg,
  );
}
