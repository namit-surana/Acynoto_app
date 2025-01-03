import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/notifications_screen/models/notifications_model.dart';

/// A controller class for the NotificationsScreen.
///
/// This class manages the state of the NotificationsScreen, including the
/// current notificationsModelObj
class NotificationsController extends GetxController {
  Rx<NotificationsModel> notificationsModelObj = NotificationsModel().obs;

  List<NotificationItemModel> categoryList = NotificationsModel.getCategories();

}
