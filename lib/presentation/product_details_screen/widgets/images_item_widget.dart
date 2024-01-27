import '../models/images_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class ImagesItemWidget extends StatelessWidget {
  ImagesItemWidget(
    this.imagesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ImagesItemModel imagesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.h,
      child: CustomImageView(
        imagePath: imagesItemModelObj.one,
        height: 130.v,
        width: 100.h,
      ),
    );
  }
}
