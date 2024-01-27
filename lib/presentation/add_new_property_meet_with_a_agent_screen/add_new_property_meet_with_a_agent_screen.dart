// ignore_for_file: deprecated_member_use

import '../add_new_property_meet_with_a_agent_screen/widgets/time_item_widget.dart';
import 'models/time_item_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'provider/add_new_property_meet_with_a_agent_provider.dart';

class AddNewPropertyMeetWithAAgentScreen extends StatefulWidget {
  const AddNewPropertyMeetWithAAgentScreen({Key? key}) : super(key: key);

  @override
  AddNewPropertyMeetWithAAgentScreenState createState() =>
      AddNewPropertyMeetWithAAgentScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AddNewPropertyMeetWithAAgentProvider(),
        child: AddNewPropertyMeetWithAAgentScreen());
  }
}

class AddNewPropertyMeetWithAAgentScreenState
    extends State<AddNewPropertyMeetWithAAgentScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(children: [
                  _buildAddressAndProgress(context),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Container(
                          height: 6.v,
                          width: 327.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray300,
                              borderRadius: BorderRadius.circular(3.h)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                  value: 0.25,
                                  backgroundColor: appTheme.gray300,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary))))),
                  SizedBox(height: 24.v),
                  _buildPropertyAddress(context),
                  SizedBox(height: 32.v),
                  _buildTitle(context),
                  SizedBox(height: 16.v),
                  _buildDates(context),
                  SizedBox(height: 32.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_pick_a_time".tr,
                              style: CustomTextStyles.titleMediumBold_1))),
                  SizedBox(height: 15.v),
                  _buildTime(context)
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
        title: AppbarSubtitleTwo(text: "msg_add_new_property".tr));
  }

  /// Section Widget
  Widget _buildAddressAndProgress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 4.v),
              child: Text("msg_meet_with_a_agent".tr,
                  style: theme.textTheme.titleSmall)),
          CustomElevatedButton(
              height: 33.v,
              width: 79.h,
              text: "lbl_02_08".tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL16,
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)
        ]));
  }

  /// Section Widget
  Widget _buildPropertyAddress(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillPrimaryContainer,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgLinkedin))),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_property_address".tr,
                        style: CustomTextStyles.titleSmallBold),
                    SizedBox(height: 4.v),
                    Text("msg_woodland_st_105".tr,
                        style: theme.textTheme.bodySmall)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
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
                  child: CustomImageView(imagePath: ImageConstant.imgIcons)))
        ]));
  }

  /// Section Widget
  Widget _buildDates(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: Consumer<AddNewPropertyMeetWithAAgentProvider>(
            builder: (context, provider, child) {
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
                    }),
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 41.v,
        child: Consumer<AddNewPropertyMeetWithAAgentProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 10.h);
              },
              itemCount: provider
                  .addNewPropertyMeetWithAAgentModelObj.timeItemList.length,
              itemBuilder: (context, index) {
                TimeItemModel model = provider
                    .addNewPropertyMeetWithAAgentModelObj.timeItemList[index];
                return TimeItemWidget(model);
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v),
      decoration: AppDecoration.outlineBlueGrayF,
      child: CustomElevatedButton(
        text: "lbl_next".tr,
        onPressed: () {
          onTapNext(context);
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the addNewPropertyTimeToSellScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewPropertyTimeToSellScreen,
    );
  }
}
