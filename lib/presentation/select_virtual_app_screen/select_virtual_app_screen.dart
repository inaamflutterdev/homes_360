import '../select_virtual_app_screen/widgets/selectvirtualapp_item_widget.dart';
import 'models/selectvirtualapp_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'provider/select_virtual_app_provider.dart';

class SelectVirtualAppScreen extends StatefulWidget {
  const SelectVirtualAppScreen({Key? key}) : super(key: key);

  @override
  SelectVirtualAppScreenState createState() => SelectVirtualAppScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SelectVirtualAppProvider(),
        child: SelectVirtualAppScreen());
  }
}

class SelectVirtualAppScreenState extends State<SelectVirtualAppScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildSelectVirtualApp(context),
                  Spacer()
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
        title: AppbarSubtitleTwo(text: "msg_select_virtual_app".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSelectVirtualApp(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Consumer<SelectVirtualAppProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 16.v);
              },
              itemCount: provider
                  .selectVirtualAppModelObj.selectvirtualappItemList.length,
              itemBuilder: (context, index) {
                SelectvirtualappItemModel model = provider
                    .selectVirtualAppModelObj.selectvirtualappItemList[index];
                return SelectvirtualappItemWidget(model);
              });
        }));
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

  /// Navigates to the selectAppAlarmScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectAppAlarmScreen,
    );
  }
}
