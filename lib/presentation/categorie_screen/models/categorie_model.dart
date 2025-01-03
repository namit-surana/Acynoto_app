import '../../../core/app_export.dart';
import 'categoriescolum_item_model.dart';

/// This class defines the variables used in the [categorie_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel {
  // Rx<List<CategoriescolumItemModel>> categoriescolumItemList =
  //     Rx(List.generate(12, (index) => CategoriescolumItemModel()));

  static List<CategorieModel> getCategories(){
    return [
      CategorieModel(ImageConstant.category1st,"Fatigue", appTheme.deepOrange50),
      CategorieModel(ImageConstant.category2nd,"Shortness of Breath", appTheme.deepPurple50),
      CategorieModel(ImageConstant.category3rd,"Joint Pain", appTheme.red5002),
      CategorieModel(ImageConstant.category4th,"Fever", appTheme.deepPurple5001),
      CategorieModel(ImageConstant.category5th,"Blurred Vision", appTheme.eyeColor),
      CategorieModel(ImageConstant.category6th,"Cough", appTheme.indigo50),
      CategorieModel(ImageConstant.category7th,"Toothache", appTheme.gray50),
      CategorieModel(ImageConstant.category8th,"Abdominal Pain", appTheme.red50),
      CategorieModel(ImageConstant.category9th,"Headache", appTheme.red5002),
      CategorieModel(ImageConstant.category10th,"Chest Pain", appTheme.blue50),
      CategorieModel(ImageConstant.category11th,"Nausea", appTheme.deepPurple5001),
      CategorieModel(ImageConstant.category12th,"Dizziness", appTheme.lightBlue50),
      CategorieModel(ImageConstant.category12th,"Swelling", appTheme.green50),
      CategorieModel(ImageConstant.category12th,"Muscle Weakness", appTheme.teal50),
      CategorieModel(ImageConstant.category12th,"Skin Rash", appTheme.orange50),
      CategorieModel(ImageConstant.category12th,"Tingling", appTheme.amber50),
      CategorieModel(ImageConstant.category12th,"Memory Loss", appTheme.cyan50),
      CategorieModel(ImageConstant.category12th,"Palpitations", appTheme.pink50),
      CategorieModel(ImageConstant.category12th,"Insomnia", appTheme.brown50),
      CategorieModel(ImageConstant.category12th,"Loss of Appetite", appTheme.lime50),
      CategorieModel(ImageConstant.category12th,"Chills", appTheme.yellow50),
      CategorieModel(ImageConstant.category12th,"Constipation", appTheme.blueGray50),
      CategorieModel(ImageConstant.category12th,"Diarrhea", appTheme.purple50),
      CategorieModel(ImageConstant.category12th,"Weight Loss", appTheme.cyan100),
      CategorieModel(ImageConstant.category12th,"Depression", appTheme.indigo100),
      CategorieModel(ImageConstant.category12th,"Anxiety", appTheme.green100),
      CategorieModel(ImageConstant.category12th,"Bruising", appTheme.orange100),
      CategorieModel(ImageConstant.category12th,"Hearing Loss", appTheme.brown100),
      CategorieModel(ImageConstant.category12th,"Light Sensitivity", appTheme.yellow100),
      CategorieModel(ImageConstant.category12th,"Swollen Lymph Nodes", appTheme.pink100),
      CategorieModel(ImageConstant.category12th,"Seizures", appTheme.teal100),
      CategorieModel(ImageConstant.category12th,"Runny Nose", appTheme.blue100),
      CategorieModel(ImageConstant.category12th,"Dry Skin", appTheme.red100),
      CategorieModel(ImageConstant.category12th,"Excessive Sweating", appTheme.lime100),
      CategorieModel(ImageConstant.category12th,"Frequent Urination", appTheme.deepOrange100),
      // CategorieModel(ImageConstant.category12th,"Ear Pain", appTheme.deepPurple100),
      CategorieModel(ImageConstant.category12th,"Eye Redness", appTheme.indigo200),
      CategorieModel(ImageConstant.category12th,"Back Pain", appTheme.green200),
      CategorieModel(ImageConstant.category12th,"Sore Throat", appTheme.amber200),
      CategorieModel(ImageConstant.category12th,"Vomiting", appTheme.purple200),
      CategorieModel(ImageConstant.category12th,"Wheezing", appTheme.cyan200),
      CategorieModel(ImageConstant.category12th,"Hair Loss", appTheme.blueGray200),
      CategorieModel(ImageConstant.category12th,"Swollen Joints", appTheme.red200),
      CategorieModel(ImageConstant.category12th,"Bloating", appTheme.lime200),
      CategorieModel(ImageConstant.category12th,"Mood Swings", appTheme.deepOrange200),
      // CategorieModel(ImageConstant.category12th,"Tremors", appTheme.deepPurple200),
      CategorieModel(ImageConstant.category12th,"Numbness", appTheme.blue300),
      CategorieModel(ImageConstant.category12th,"Weak Pulse", appTheme.green300),
      CategorieModel(ImageConstant.category12th,"Difficulty Swallowing", appTheme.amber300),
      CategorieModel(ImageConstant.category12th,"Dry Mouth", appTheme.orange300),
    ];
  }
}


