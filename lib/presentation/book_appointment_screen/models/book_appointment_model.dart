import '../../../core/app_export.dart';import 'datecolumn_item_model.dart';import 'chipviewselectt_item_model.dart';import 'chipviewselectt2_item_model.dart';/// This class defines the variables used in the [book_appointment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookAppointmentModel {Rx<List<DatecolumnItemModel>> datecolumnItemList = Rx(List.generate(6,(index) => DatecolumnItemModel()));

Rx<List<ChipviewselecttItemModel>> chipviewselecttItemList = Rx(List.generate(3,(index) =>ChipviewselecttItemModel()));

Rx<List<Chipviewselectt2ItemModel>> chipviewselectt2ItemList = Rx(List.generate(2,(index) =>Chipviewselectt2ItemModel()));

 }
