// ignore_for_file: deprecated_member_use

import '../pick_date_screen/widgets/time1_item_widget.dart';
import 'models/time1_item_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'provider/pick_date_provider.dart';

class PickDateScreen extends StatefulWidget {
  const PickDateScreen({Key? key}) : super(key: key);

  @override
  PickDateScreenState createState() => PickDateScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PickDateProvider(), child: PickDateScreen());
  }
}

class PickDateScreenState extends State<PickDateScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 26.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("msg_request_a_home_tour".tr,
                              style: CustomTextStyles.titleMediumBold_1)),
                      SizedBox(height: 13.v),
                      _buildTabs(context),
                      SizedBox(height: 24.v),
                      _buildTitle(context),
                      SizedBox(height: 16.v),
                      _buildDates(context),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_pick_a_time".tr,
                              style: CustomTextStyles.titleMediumBold_1)),
                      SizedBox(height: 15.v),
                      _buildTime(context)
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
            }));
  }

  /// Section Widget
  Widget _buildTabs(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            padding: EdgeInsets.all(4.h),
            decoration: AppDecoration.fillGray300
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              Container(
                  width: 159.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 9.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHome,
                            height: 20.adaptSize,
                            width: 20.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: Text("lbl_in_person".tr,
                                style: CustomTextStyles.titleSmallBold))
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgCamera,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 10.v)),
              Padding(
                  padding: EdgeInsets.fromLTRB(10.h, 10.v, 24.h, 9.v),
                  child: Text("lbl_virtual".tr,
                      style: CustomTextStyles.titleSmallBluegray500_1))
            ])));
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text("lbl_january".tr,
                      style: CustomTextStyles.titleMediumBold_1)),
              Spacer(),
              CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.outlineGrayTL5,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftPrimarycontainer)),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.outlineGrayTL5,
                      child:
                          CustomImageView(imagePath: ImageConstant.imgIcons)))
            ])));
  }

  /// Section Widget
  Widget _buildDates(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 24.h),
            child: IntrinsicWidth(child:
                Consumer<PickDateProvider>(builder: (context, provider, child) {
              return SizedBox(
                  height: 96.v,
                  width: 368.h,
                  child: EasyDateTimeLine(
                      initialDate:
                          provider.selectedDatesFromCalendar1 ?? DateTime.now(),
                      locale: 'en_US',
                      headerProps: EasyHeaderProps(
                          selectedDateFormat: SelectedDateFormat.fullDateDMY,
                          monthPickerType: MonthPickerType.switcher,
                          showHeader: false),
                      dayProps: EasyDayProps(),
                      onDateChange: (selectedDate) {
                        provider.selectedDatesFromCalendar1 = selectedDate;
                      }));
            }))));
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 41.v,
            child:
                Consumer<PickDateProvider>(builder: (context, provider, child) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 24.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10.h);
                  },
                  itemCount: provider.pickDateModelObj.time1ItemList.length,
                  itemBuilder: (context, index) {
                    Time1ItemModel model =
                        provider.pickDateModelObj.time1ItemList[index];
                    return Time1ItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v),
        decoration: AppDecoration.outlineBlueGrayF,
        child: CustomElevatedButton(
            text: "lbl_schedule_tour".tr,
            onPressed: () {
              onTapScheduleTour(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the verifyPhoneNumberScreen when the action is triggered.
  onTapScheduleTour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verifyPhoneNumberScreen,
    );
  }
}
