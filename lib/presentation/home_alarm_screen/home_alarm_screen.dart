import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/presentation/home_page/home_page.dart';
import 'package:homes360/presentation/home_search_page/home_search_page.dart';
import 'package:homes360/presentation/message_page/message_page.dart';
import 'package:homes360/presentation/my_home_page/my_home_page.dart';
import 'package:homes360/presentation/profile_page/profile_page.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:homes360/widgets/app_bar/appbar_title_image.dart';
import 'package:homes360/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_bottom_bar.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'package:homes360/widgets/custom_outlined_button.dart';
import 'package:homes360/widgets/custom_search_view.dart';
import 'provider/home_alarm_provider.dart';

class HomeAlarmScreen extends StatefulWidget {
  const HomeAlarmScreen({Key? key}) : super(key: key);

  @override
  HomeAlarmScreenState createState() => HomeAlarmScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeAlarmProvider(), child: HomeAlarmScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomeAlarmScreenState extends State<HomeAlarmScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: Column(children: [
                                Selector<HomeAlarmProvider,
                                        TextEditingController?>(
                                    selector: (context, provider) =>
                                        provider.searchController,
                                    builder:
                                        (context, searchController, child) {
                                      return CustomSearchView(
                                          controller: searchController,
                                          hintText: "lbl_search".tr);
                                    }),
                                SizedBox(height: 24.v),
                                _buildAlertCard(context),
                                SizedBox(height: 24.v),
                                _buildPropertyCard(context,
                                    img: ImageConstant.imgImg,
                                    goldenMeadows: "lbl_golden_meadows".tr,
                                    stCelinaDelaware:
                                        "msg_st_celina_delaware2".tr,
                                    price: "lbl_500".tr,
                                    perMonth: "lbl_per_month".tr, onTapImg: () {
                                  onTapImg(context);
                                }),
                                SizedBox(height: 24.v),
                                _buildPropertyCard(context,
                                    img: ImageConstant.imgImg418x327,
                                    goldenMeadows: "lbl_golden_meadows".tr,
                                    stCelinaDelaware:
                                        "msg_st_celina_delaware2".tr,
                                    price: "lbl_500".tr,
                                    perMonth: "lbl_per_month".tr, onTapImg: () {
                                  onTapImg1(context);
                                })
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
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

  /// Section Widget
  Widget _buildAlertCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitleAndLocation(context,
                        goldenMeadows: "msg_mighty_cinco_family".tr,
                        stCelinaDelaware: "msg_st_celina_delaware2".tr),
                    Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgCalendar,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(bottom: 2.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("lbl_jan_1_2021".tr,
                                        style: CustomTextStyles
                                            .labelLargePrimaryContainerSemiBold))
                              ]),
                              SizedBox(height: 4.v),
                              Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgClock,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(bottom: 2.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("lbl_4_00_pm".tr,
                                        style: CustomTextStyles
                                            .labelLargePrimaryContainerSemiBold))
                              ])
                            ]))
                  ])),
          SizedBox(height: 13.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                width: 143.h,
                margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgAvatar,
                          height: 33.adaptSize,
                          width: 33.adaptSize,
                          radius: BorderRadius.circular(8.h)),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_buyer_s_agent".tr,
                                style: CustomTextStyles.bodySmall10),
                            Text("msg_leslie_alexander".tr,
                                style: CustomTextStyles
                                    .labelLargePrimaryContainerSemiBold)
                          ])
                    ])),
            CustomOutlinedButton(
                height: 37.v,
                width: 103.h,
                text: "lbl_phone".tr,
                leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgPhone,
                        height: 20.adaptSize,
                        width: 20.adaptSize)),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle: CustomTextStyles.titleSmallPrimary_1)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildTitleAndLocation(
    BuildContext context, {
    required String goldenMeadows,
    required String stCelinaDelaware,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(goldenMeadows,
          style: theme.textTheme.titleMedium!
              .copyWith(color: theme.colorScheme.primaryContainer)),
      SizedBox(height: 8.v),
      Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgIconMapPin,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v)),
        Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(stCelinaDelaware,
                style: theme.textTheme.bodySmall!
                    .copyWith(color: appTheme.blueGray500)))
      ])
    ]);
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Discover:
        return AppRoutes.homeSearchPage;
      case BottomBarEnum.Myhome:
        return AppRoutes.myHomePage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.messagePage:
        return MessagePage.builder(context);
      case AppRoutes.homeSearchPage:
        return HomeSearchPage.builder(context);
      case AppRoutes.myHomePage:
        return MyHomePage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the notificationEmptyStatesScreen when the action is triggered.
  onTapNotificationLight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationEmptyStatesScreen,
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
