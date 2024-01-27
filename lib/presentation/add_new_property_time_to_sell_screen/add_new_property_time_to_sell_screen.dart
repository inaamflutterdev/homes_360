import '../add_new_property_time_to_sell_screen/widgets/addnewpropertytimetosell_item_widget.dart';
import 'models/addnewpropertytimetosell_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'provider/add_new_property_time_to_sell_provider.dart';

class AddNewPropertyTimeToSellScreen extends StatefulWidget {
  const AddNewPropertyTimeToSellScreen({Key? key}) : super(key: key);

  @override
  AddNewPropertyTimeToSellScreenState createState() =>
      AddNewPropertyTimeToSellScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AddNewPropertyTimeToSellProvider(),
        child: AddNewPropertyTimeToSellScreen());
  }
}

class AddNewPropertyTimeToSellScreenState
    extends State<AddNewPropertyTimeToSellScreen> {
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAddressAndProgress(context),
                      SizedBox(height: 16.v),
                      Container(
                          height: 6.v,
                          width: 327.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray300,
                              borderRadius: BorderRadius.circular(3.h)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                  value: 0.37,
                                  backgroundColor: appTheme.gray300,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary)))),
                      SizedBox(height: 26.v),
                      Text("msg_how_soon_do_you".tr,
                          style: CustomTextStyles.titleMediumBold_1),
                      SizedBox(height: 13.v),
                      _buildAddNewPropertyTimetosell(context)
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
        title: AppbarSubtitleTwo(text: "msg_add_new_property".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAddressAndProgress(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 6.v),
          child:
              Text("lbl_time_to_sell".tr, style: theme.textTheme.titleSmall)),
      CustomElevatedButton(
          height: 33.v,
          width: 78.h,
          text: "lbl_03_08".tr,
          buttonStyle: CustomButtonStyles.fillPrimaryTL16,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)
    ]);
  }

  /// Section Widget
  Widget _buildAddNewPropertyTimetosell(BuildContext context) {
    return Consumer<AddNewPropertyTimeToSellProvider>(
        builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 8.v);
          },
          itemCount: provider.addNewPropertyTimeToSellModelObj
              .addnewpropertytimetosellItemList.length,
          itemBuilder: (context, index) {
            AddnewpropertytimetosellItemModel model = provider
                .addNewPropertyTimeToSellModelObj
                .addnewpropertytimetosellItemList[index];
            return AddnewpropertytimetosellItemWidget(model);
          });
    });
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
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the addNewPropertyReasonSellingHomeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewPropertyReasonSellingHomeScreen,
    );
  }
}
