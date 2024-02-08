import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_search_view.dart';
import 'provider/faqs_get_help_provider.dart';

class FaqsGetHelpScreen extends StatefulWidget {
  const FaqsGetHelpScreen({Key? key}) : super(key: key);

  @override
  FaqsGetHelpScreenState createState() => FaqsGetHelpScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FaqsGetHelpProvider(), child: FaqsGetHelpScreen());
  }
}

class FaqsGetHelpScreenState extends State<FaqsGetHelpScreen> {
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Selector<FaqsGetHelpProvider, TextEditingController?>(
                          selector: (context, provider) =>
                              provider.searchController,
                          builder: (context, searchController, child) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "msg_search_questions".tr,
                                contentPadding: EdgeInsets.only(
                                    top: 17.v, right: 30.h, bottom: 17.v),
                                borderDecoration:
                                    SearchViewStyleHelper.outlineGrayTL10,
                                filled: false);
                          }),
                      SizedBox(height: 26.v),
                      Text("msg_frequently_asked".tr,
                          style: CustomTextStyles.titleMediumBold_1),
                      SizedBox(height: 22.v),
                      _buildWhoCanBuyAHome(context,
                          text: "msg_how_does_relax_work".tr,
                          image: ImageConstant.imgArrowUp),
                      SizedBox(height: 13.v),
                      SizedBox(
                          width: 325.h,
                          child: Text("msg_lorem_ipsum_dolor".tr,
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallPrimaryContainer
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 18.v),
                      Divider(),
                      SizedBox(height: 19.v),
                      _buildQuestions(context),
                      SizedBox(height: 23.v),
                      Row(children: [
                        Text("lbl_show_all".tr,
                            style: CustomTextStyles.titleSmallPrimaryBold),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(left: 8.h, bottom: 2.v))
                      ]),
                      SizedBox(height: 5.v)
                    ]))));
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
        title: AppbarSubtitleTwo(text: "lbl_faqs".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildQuestions(BuildContext context) {
    return Column(children: [
      _buildWhoCanBuyAHome(context,
          text: "msg_who_can_buy_a_home".tr,
          image: ImageConstant.imgArrowDownBlueGray50020x20),
      SizedBox(height: 18.v),
      Divider(),
      SizedBox(height: 19.v),
      _buildWhoCanBuyAHome(context,
          text: "msg_how_can_i_sell_my".tr,
          image: ImageConstant.imgArrowDownBlueGray50020x20),
      SizedBox(height: 18.v),
      Divider(),
      SizedBox(height: 19.v),
      _buildWhoCanBuyAHome(context,
          text: "msg_how_do_i_contact".tr,
          image: ImageConstant.imgArrowDownBlueGray50020x20)
    ]);
  }

  /// Common widget
  Widget _buildWhoCanBuyAHome(
    BuildContext context, {
    required String text,
    required String image,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(text,
              style: CustomTextStyles.titleSmallBold
                  .copyWith(color: theme.colorScheme.primaryContainer))),
      CustomImageView(
          imagePath: image,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
