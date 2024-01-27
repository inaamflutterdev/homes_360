import '../home_search_page/widgets/homesearch_item_widget.dart';
import 'models/homesearch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_title_searchview.dart';
import 'package:homes360/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'provider/home_search_provider.dart';

class HomeSearchPage extends StatefulWidget {
  const HomeSearchPage({Key? key}) : super(key: key);

  @override
  HomeSearchPageState createState() => HomeSearchPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeSearchProvider(), child: HomeSearchPage());
  }
}

class HomeSearchPageState extends State<HomeSearchPage> {
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
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgBrightness,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, top: 2.v),
                            child: Text("msg_or_use_my_current".tr,
                                style: theme.textTheme.titleSmall))
                      ]),
                      SizedBox(height: 31.v),
                      Text("lbl_search_results".tr,
                          style: CustomTextStyles.titleSmallBluegray500_1),
                      SizedBox(height: 18.v),
                      _buildHomeSearch(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Selector<HomeSearchProvider, TextEditingController?>(
            selector: (context, provider) => provider.searchController,
            builder: (context, searchController, child) {
              return AppbarTitleSearchview(
                  margin: EdgeInsets.only(left: 24.h),
                  hintText: "msg_360_stillwater_rd".tr,
                  controller: searchController);
            }),
        actions: [
          AppbarTrailingIconbuttonOne(
              imagePath: ImageConstant.imgFile,
              margin: EdgeInsets.fromLTRB(8.h, 4.v, 24.h, 4.v),
              onTap: () {
                onTapFile(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildHomeSearch(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 78.h),
            child: Consumer<HomeSearchProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 17.v);
                  },
                  itemCount:
                      provider.homeSearchModelObj.homesearchItemList.length,
                  itemBuilder: (context, index) {
                    HomesearchItemModel model =
                        provider.homeSearchModelObj.homesearchItemList[index];
                    return HomesearchItemWidget(model, onTapSearch: () {
                      onTapSearch(context);
                    });
                  });
            })));
  }

  /// Navigates to the productDetailsScreen when the action is triggered.
  onTapSearch(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailsScreen);
  }

  /// Navigates to the filterTabContainerScreen when the action is triggered.
  onTapFile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.filterTabContainerScreen,
    );
  }
}
