class NotificationsModel {
  // Rx<List<NotificationrowItemModel>> notificationrowItemList =
  //     Rx(List.generate(5, (index) => NotificationrowItemModel()));

  static List<NotificationItemModel> getCategories() {
    return [
      NotificationItemModel('Appointment cancelled',
          "Your appointment cancel for 29 Sep 2023", '30 seconds ago'),
      NotificationItemModel(
          'Refer & earn now',
          "Referral bonuses for referring friends and \nfamily members",
          '1 hour ago'),
      NotificationItemModel(
          'Flat discount offers',
          "Discounts for booking appointments \nduring off-peak hours",
          '10 hours ago'),
      NotificationItemModel(
          'Free or discounted lab tests',
          "partner with local labs to offer free or\ndiscounted lab tests to its users.",
          '18 hours ago'),
      NotificationItemModel(
          'Discount doctor consultations',
          "discounted doctor consultations to its\nusers, either as a one-time offer or as a\nsubscription benefit.",
          "a few seconds ago"),
    ];
  }
}

class NotificationItemModel {
  String? title;
  String? subTitle;
  String? time;

  NotificationItemModel(
    this.title,
    this.subTitle,
    this.time,
  );
}
