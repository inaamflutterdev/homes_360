import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_outlined_button.dart';
import 'provider/select_app_alarm_provider.dart';

class SelectAppAlarmScreen extends StatefulWidget {
  const SelectAppAlarmScreen({Key? key}) : super(key: key);

  @override
  SelectAppAlarmScreenState createState() => SelectAppAlarmScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SelectAppAlarmProvider(),
        child: SelectAppAlarmScreen());
  }
}

class SelectAppAlarmScreenState extends State<SelectAppAlarmScreen> {
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
                  _buildMightyCincoFamily(context),
                  SizedBox(height: 24.v),
                  _buildErrorMsg(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBtn(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "msg_review_your_tour".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildMightyCincoFamily(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("msg_mighty_cinco_family".tr,
                  style: theme.textTheme.titleMedium),
              SizedBox(height: 2.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgLinkedinPrimary,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v)),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text("msg_jakarta_indonesia".tr,
                        style: CustomTextStyles.bodySmallPrimaryContainer))
              ]),
              SizedBox(height: 11.v),
              Divider(),
              Divider(),
              SizedBox(height: 17.v),
              _buildTime(context,
                  titleText: "lbl_date".tr, timeText: "lbl_mon_april_4".tr),
              SizedBox(height: 12.v),
              _buildTime(context,
                  titleText: "lbl_time".tr, timeText: "lbl_4_00_4_45_pm".tr)
            ]));
  }

  /// Section Widget
  Widget _buildErrorMsg(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillRed40019
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgVideoCameraSecondarycontainer,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 18.v, bottom: 16.v)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_your_identity_is".tr,
                            style:
                                CustomTextStyles.titleSmallSecondaryContainer),
                        SizedBox(height: 1.v),
                        SizedBox(
                            width: 234.h,
                            child: Text("msg_verify_your_identity".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodySmallSecondaryContainer
                                    .copyWith(height: 1.50)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v),
        decoration: AppDecoration.outlineBlueGrayF,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomOutlinedButton(
                  width: 156.h,
                  text: "lbl_edit".tr,
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
                  buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold),
              CustomElevatedButton(
                  width: 156.h,
                  text: "lbl_schedule".tr,
                  margin: EdgeInsets.only(left: 15.h),
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                  onPressed: () {
                    onTapSchedule(context);
                  })
            ]));
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String titleText,
    required String timeText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(titleText,
              style: CustomTextStyles.titleSmallBluegray500_1
                  .copyWith(color: appTheme.blueGray500))),
      Text(timeText,
          style: CustomTextStyles.titleMediumBold
              .copyWith(color: theme.colorScheme.primaryContainer))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the confirmRequestScreen when the action is triggered.
  onTapSchedule(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.confirmRequestScreen,
    );
  }
}
