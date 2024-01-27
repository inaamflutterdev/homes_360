import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'provider/confirm_request_provider.dart';
import 'package:homes360/presentation/confirm_request_bottom_sheet_bottomsheet/confirm_request_bottom_sheet_bottomsheet.dart';

class ConfirmRequestScreen extends StatefulWidget {
  const ConfirmRequestScreen({Key? key}) : super(key: key);

  @override
  ConfirmRequestScreenState createState() => ConfirmRequestScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ConfirmRequestProvider(),
        child: ConfirmRequestScreen());
  }
}

class ConfirmRequestScreenState extends State<ConfirmRequestScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  _buildConfirm(context),
                  SizedBox(height: 24.v),
                  _buildMightyCincoFamily(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBtn(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
            margin: EdgeInsets.fromLTRB(24.h, 8.v, 311.h, 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 30.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillPrimaryTL20,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgCheckmark)),
              SizedBox(height: 18.v),
              Text("msg_request_received".tr,
                  style: CustomTextStyles.titleMediumBold_1),
              SizedBox(height: 8.v),
              SizedBox(
                  width: 278.h,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_we_re_checking_if2".tr,
                            style: CustomTextStyles.titleSmallff74778b),
                        TextSpan(
                            text: "msg_mon_april_4_4_00".tr,
                            style: CustomTextStyles.titleSmallff16161a),
                        TextSpan(
                            text: "lbl_to".tr,
                            style: CustomTextStyles.titleSmallff74778b),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "lbl_4_45_pm".tr,
                            style: CustomTextStyles.titleSmallff16161a),
                        TextSpan(
                            text: "lbl3".tr,
                            style: CustomTextStyles.titleSmallff16161aMedium)
                      ]),
                      textAlign: TextAlign.center))
            ]));
  }

  /// Section Widget
  Widget _buildMightyCincoFamily(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 21.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Container(
                  width: 261.h,
                  margin: EdgeInsets.only(right: 17.h),
                  child: Text("msg_associate_capital".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.titleSmall!.copyWith(height: 1.50))),
              SizedBox(height: 9.v),
              Divider(),
              SizedBox(height: 11.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgBg48x48,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        radius: BorderRadius.circular(24.h),
                        margin: EdgeInsets.only(bottom: 2.v)),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_leslie_alexander".tr,
                              style: CustomTextStyles.titleMediumBold),
                          SizedBox(height: 7.v),
                          Text("msg_rich_capital_properties".tr,
                              style:
                                  CustomTextStyles.titleSmallBluegray500Medium)
                        ]),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(top: 14.v, bottom: 16.v))
                  ])
            ]));
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v),
        decoration: AppDecoration.outlineBlueGrayF,
        child: CustomElevatedButton(
            text: "lbl_done".tr,
            onPressed: () {
              onTapDone(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [ConfirmRequestBottomSheetBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapDone(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ConfirmRequestBottomSheetBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
