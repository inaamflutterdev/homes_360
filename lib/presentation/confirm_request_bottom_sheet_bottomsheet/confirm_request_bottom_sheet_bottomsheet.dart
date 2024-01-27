import '../confirm_request_bottom_sheet_bottomsheet/widgets/confirmrequestgrid_item_widget.dart';
import 'models/confirmrequestgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'provider/confirm_request_bottom_sheet_provider.dart';

class ConfirmRequestBottomSheetBottomsheet extends StatefulWidget {
  const ConfirmRequestBottomSheetBottomsheet({Key? key}) : super(key: key);

  @override
  ConfirmRequestBottomSheetBottomsheetState createState() =>
      ConfirmRequestBottomSheetBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ConfirmRequestBottomSheetProvider(),
        child: ConfirmRequestBottomSheetBottomsheet());
  }
}

class ConfirmRequestBottomSheetBottomsheetState
    extends State<ConfirmRequestBottomSheetBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.fillGray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(width: 56.h, child: Divider(color: appTheme.blueGray500)),
          SizedBox(height: 8.v),
          _buildHeaderRow(context),
          SizedBox(height: 24.v),
          _buildAgentNameRow(context),
          SizedBox(height: 25.v),
          Container(
              width: 320.h,
              margin: EdgeInsets.only(left: 24.h, right: 29.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_my_associate_rachel2".tr,
                        style: CustomTextStyles.bodyMediumff16161a),
                    TextSpan(
                        text: "msg_mon_april_4_4_00".tr,
                        style: CustomTextStyles.titleSmallff16161a),
                    TextSpan(
                        text: "lbl_to2".tr,
                        style: CustomTextStyles.bodyMediumff16161a),
                    TextSpan(
                        text: "msg_4_45_pm_i_will".tr,
                        style: CustomTextStyles.titleSmallff16161a)
                  ]),
                  textAlign: TextAlign.left)),
          SizedBox(height: 15.v),
          Container(
              width: 324.h,
              margin: EdgeInsets.symmetric(horizontal: 24.h),
              child: Text("msg_if_you_d_like_to".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumPrimaryContainer
                      .copyWith(height: 1.50))),
          SizedBox(height: 21.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text("lbl_about_me".tr,
                      style: CustomTextStyles.titleMediumBold_1))),
          SizedBox(height: 13.v),
          Container(
              width: 325.h,
              margin: EdgeInsets.symmetric(horizontal: 24.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_diana".tr,
                        style: CustomTextStyles.titleSmallff16161a),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_richards".tr,
                        style: CustomTextStyles.titleSmallff16161a),
                    TextSpan(
                        text: "msg_is_a_third_generation".tr,
                        style: CustomTextStyles.bodyMediumff16161a),
                    TextSpan(
                        text: "lbl_more".tr,
                        style: CustomTextStyles.titleSmallff1786f9)
                  ]),
                  textAlign: TextAlign.left)),
          SizedBox(height: 23.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text("lbl_highlights".tr,
                      style: CustomTextStyles.titleMediumBold_1))),
          SizedBox(height: 13.v),
          _buildConfirmRequestGrid(context),
          SizedBox(height: 24.v)
        ]));
  }

  /// Section Widget
  Widget _buildHeaderRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
        decoration: AppDecoration.fillGray50,
        child: Row(children: [
          CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              onTap: () {
                onTapBtnIcon(context);
              },
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconPrimarycontainer)),
          Padding(
              padding: EdgeInsets.only(left: 67.h, top: 10.v, bottom: 4.v),
              child: Text("lbl_agent_detail".tr,
                  style: theme.textTheme.titleMedium))
        ]));
  }

  /// Section Widget
  Widget _buildAgentNameRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgBg60x60,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(30.h)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_leslie_alexander".tr,
                            style: CustomTextStyles.titleMediumBold),
                        SizedBox(height: 11.v),
                        Text("msg_rich_capital_properties".tr,
                            style: CustomTextStyles.titleSmallBluegray500Medium)
                      ])),
              CustomElevatedButton(
                  height: 26.v,
                  width: 74.h,
                  text: "lbl_4_8_9".tr,
                  margin: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 30.v),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgSignalYellow700,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillGrayTL13,
                  buttonTextStyle: CustomTextStyles.labelMediumOnPrimary)
            ]));
  }

  /// Section Widget
  Widget _buildConfirmRequestGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Consumer<ConfirmRequestBottomSheetProvider>(
            builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 65.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 13.h,
                  crossAxisSpacing: 13.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: provider.confirmRequestBottomSheetModelObj
                  .confirmrequestgridItemList.length,
              itemBuilder: (context, index) {
                ConfirmrequestgridItemModel model = provider
                    .confirmRequestBottomSheetModelObj
                    .confirmrequestgridItemList[index];
                return ConfirmrequestgridItemWidget(model);
              });
        }));
  }

  /// Navigates to the previous screen.
  onTapBtnIcon(BuildContext context) {
    NavigatorService.goBack();
  }
}
