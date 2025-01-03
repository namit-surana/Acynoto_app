import '../../../core/app_export.dart';/// This class is used in the [datecolumn_item_widget] screen.
class DatecolumnItemModel {DatecolumnItemModel({this.day, this.date, this.id, }) { day = day  ?? Rx("Mon");date = date  ?? Rx("21");id = id  ?? Rx(""); }

Rx<String>? day;

Rx<String>? date;

Rx<String>? id;

 }
