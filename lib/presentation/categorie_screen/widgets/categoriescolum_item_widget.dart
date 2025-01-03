import '../controller/categorie_controller.dart';
import '../models/categoriescolum_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class CategoriescolumItemWidget extends StatelessWidget {
  CategoriescolumItemWidget(
    this.categoriescolumItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategorieModel categoriescolumItemModelObj;

  var controller = Get.find<CategorieController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 18.v,
      ),
      
      decoration: BoxDecoration(
         color:  categoriescolumItemModelObj.color,
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: categoriescolumItemModelObj.image,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          SizedBox(height: 16.v),
          Text(
            categoriescolumItemModelObj.title!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
