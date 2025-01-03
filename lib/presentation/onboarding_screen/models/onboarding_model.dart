
// class OnboardingModel {
//   Rx<List<DoctorprofileItemModel>> doctorprofileItemList =
//       Rx(List.generate(1, (index) => DoctorprofileItemModel()));
// }


class OnboardingModel {
  String title;
  String description;
  String image;

  OnboardingModel(
      this.title,
      this.description,
      this.image,
      );
}