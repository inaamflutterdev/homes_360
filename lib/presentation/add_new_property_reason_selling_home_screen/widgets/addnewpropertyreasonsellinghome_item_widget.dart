import '../models/addnewpropertyreasonsellinghome_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class AddnewpropertyreasonsellinghomeItemWidget extends StatelessWidget {
  AddnewpropertyreasonsellinghomeItemWidget(
    this.addnewpropertyreasonsellinghomeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddnewpropertyreasonsellinghomeItemModel
      addnewpropertyreasonsellinghomeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                4.h,
              ),
              border: Border.all(
                color: appTheme.blueGray500,
                width: 1.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
            ),
            child: Text(
              addnewpropertyreasonsellinghomeItemModelObj.upgradingMyHome!,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
