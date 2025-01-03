import '../../chat_tab_container_screen/models/chat_tab_container_model.dart';
import '../controller/chat1_controller.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class Listdresther1ItemWidget extends StatelessWidget {
  Listdresther1ItemWidget(
    this.listdresther1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TabChatModel listdresther1ItemModelObj;

  var controller = Get.find<Chat1Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: listdresther1ItemModelObj.image,
                height: 58.v,
                width: 58.v,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listdresther1ItemModelObj.name!,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      listdresther1ItemModelObj.msg!,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeGray700,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 39.v,
            ),
            child: Text(
              listdresther1ItemModelObj.time!,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeGray700,
            ),
          ),
        ],
      ),
    );
  }
}
