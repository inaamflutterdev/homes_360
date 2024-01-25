import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/presentation/home_page/home_page.dart';
import 'package:homes360/presentation/home_search_page/home_search_page.dart';
import 'package:homes360/presentation/message_page/message_page.dart';
import 'package:homes360/presentation/my_home_page/my_home_page.dart';
import 'package:homes360/presentation/profile_page/profile_page.dart';
import 'package:homes360/widgets/custom_bottom_bar.dart';
import 'provider/home_container_provider.dart';

class HomeContainerScreen extends StatefulWidget {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  HomeContainerScreenState createState() => HomeContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeContainerProvider(),
        child: HomeContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomeContainerScreenState extends State<HomeContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.productDetailsScreen,
    );
    NavigatorService.pushNamed(
      AppRoutes.productDetailsScreen,
    );
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
}
