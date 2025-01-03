import '../../../core/app_export.dart';

/// This class is used in the [notificationrow_item_widget] screen.

class NotificationrowItemModel {
  NotificationrowItemModel({
    this.cancellationTex,
    this.appointmentText,
    this.timeText,
    this.id,
  }) {
    cancellationTex = cancellationTex ?? Rx("Appointment cancelled");
    appointmentText =
        appointmentText ?? Rx("Your appointment cancel for 29 Sep 2023");
    timeText = timeText ?? Rx("30 seconds ago");
    id = id ?? Rx("");
  }

  Rx<String>? cancellationTex;

  Rx<String>? appointmentText;

  Rx<String>? timeText;

  Rx<String>? id;
}
