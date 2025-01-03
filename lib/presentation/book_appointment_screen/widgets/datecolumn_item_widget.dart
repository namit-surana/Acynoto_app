import '../controller/book_appointment_controller.dart';
import '../models/datecolumn_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class DatecolumnItemWidget extends StatelessWidget {
  DatecolumnItemWidget(
    this.datecolumnItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DatecolumnItemModel datecolumnItemModelObj;

  var controller = Get.find<BookAppointmentController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  datecolumnItemModelObj.day!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 11.v,
                ),
                child: Obx(
                  () => Text(
                    datecolumnItemModelObj.date!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
