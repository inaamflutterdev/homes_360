import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:homes360/widgets/app_bar/appbar_title_image.dart';
import 'package:homes360/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'package:homes360/widgets/custom_search_view.dart';
import 'provider/home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(), child: HomePage());
  }
}

class HomePageState extends State<HomePage> {
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
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 24.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          Selector<HomeProvider, TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.searchController,
                              builder: (context, searchController, child) {
                                return CustomSearchView(
                                    controller: searchController,
                                    hintText: "lbl_search".tr);
                              }),
                          SizedBox(height: 24.v),
                          _buildPropertyCard(context,
                              img: ImageConstant.imgImg,
                              goldenMeadows: "lbl_golden_meadows".tr,
                              stCelinaDelaware: "msg_st_celina_delaware2".tr,
                              price: "lbl_500".tr,
                              perMonth: "lbl_per_month".tr, onTapImg: () {
                            onTapImg(context);
                          }),
                          SizedBox(height: 24.v),
                          _buildPropertyCard(context,
                              img: ImageConstant.imgImg418x327,
                              goldenMeadows: "lbl_golden_meadows".tr,
                              stCelinaDelaware: "msg_st_celina_delaware2".tr,
                              price: "lbl_500".tr,
                              perMonth: "lbl_per_month".tr, onTapImg: () {
                            onTapImg1(context);
                          })
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 60.v,
        title: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Column(children: [
              AppbarSubtitleFive(
                  text: "lbl_location".tr,
                  margin: EdgeInsets.only(right: 129.h)),
              SizedBox(height: 6.v),
              Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgIconMapPin,
                    margin: EdgeInsets.only(bottom: 3.v)),
                AppbarSubtitleThree(
                    text: "msg_st_celina_delaware".tr,
                    margin: EdgeInsets.only(left: 8.h)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowDownBlueGray500,
                    margin: EdgeInsets.only(left: 4.h, top: 2.v, bottom: 5.v))
              ])
            ])),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgGrid,
              margin: EdgeInsets.only(left: 24.h, top: 10.v, right: 10.h)),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgNotificationLight,
              margin: EdgeInsets.only(left: 12.h, top: 10.v, right: 34.h),
              onTap: () {
                onTapNotificationLight(context);
              })
        ],
        styleType: Style.bgFill);
  }

  /// Common widget
  Widget _buildPropertyCard(
    BuildContext context, {
    required String img,
    required String goldenMeadows,
    required String stCelinaDelaware,
    required String price,
    required String perMonth,
    Function? onTapImg,
  }) {
    return SizedBox(
        height: 418.v,
        width: 327.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: img,
              height: 418.v,
              width: 327.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center,
              onTap: () {
                onTapImg!.call();
              }),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.outlineGrayTL18,
                        alignment: Alignment.centerRight,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFavorite)),
                    SizedBox(height: 268.v),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 14.v),
                        decoration: AppDecoration.fillGray50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(goldenMeadows,
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                                    color: theme.colorScheme
                                                        .primaryContainer)),
                                        SizedBox(height: 8.v),
                                        Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgIconMapPin,
                                              height: 14.adaptSize,
                                              width: 14.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 2.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(stCelinaDelaware,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(
                                                          color: appTheme
                                                              .blueGray500)))
                                        ])
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Column(children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(price,
                                            style: CustomTextStyles
                                                .titleMediumPrimary_1
                                                .copyWith(
                                                    color: theme
                                                        .colorScheme.primary))),
                                    SizedBox(height: 9.v),
                                    Text(perMonth,
                                        style: theme.textTheme.bodySmall!
                                            .copyWith(
                                                color: appTheme.blueGray500))
                                  ]))
                            ]))
                  ])))
        ]));
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapNotificationLight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the productDetailsScreen when the action is triggered.
  onTapImg(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDetailsScreen,
    );
  }

  /// Navigates to the productDetailsScreen when the action is triggered.
  onTapImg1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDetailsScreen,
    );
  }
}
