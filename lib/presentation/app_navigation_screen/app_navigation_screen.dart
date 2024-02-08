import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign in ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_Alarm".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeAlarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification_Empty States".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationEmptyStatesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message_Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Home_Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myHomeEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Address".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Meet with a Agent".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyMeetWithAAgentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Time to sell".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyTimeToSellScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Add New Property_Reason selling home".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyReasonSellingHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Decsription".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyDecsriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Home facts".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyHomeFactsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Contact".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyContactScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Select Amenities".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertySelectAmenitiesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_Listing".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeListingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_Listing_Satelite".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeListingSateliteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_Listing_Draw".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeListingDrawScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.filterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pick Date".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pickDateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verify Phone Number".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verifyPhoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select virtual app".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectVirtualAppScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select App_Alarm".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectAppAlarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirm request ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmRequestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FAQs_Get help".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqsGetHelpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Past Tours".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pastToursScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recently Views".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recentlyViewsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Favorite ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favoriteScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
