import '../notification_screen/widgets/todaysection_item_widget.dart';
import 'models/todaysection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'provider/notification_provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  NotificationScreenState createState() => NotificationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationProvider(),
        child: NotificationScreen());
  }
}

class NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.fromLTRB(24.h, 27.v, 24.h, 5.v),
                child: Consumer<NotificationProvider>(
                    builder: (context, provider, child) {
                  return GroupedListView<TodaysectionItemModel, String>(
                      shrinkWrap: true,
                      stickyHeaderBackgroundColor: Colors.transparent,
                      elements:
                          provider.notificationModelObj.todaysectionItemList,
                      groupBy: (element) => element.groupBy!,
                      sort: false,
                      groupSeparatorBuilder: (String value) {
                        return Padding(
                            padding: EdgeInsets.only(top: 22.v, bottom: 17.v),
                            child: Column(children: [
                              Text(value,
                                  style: CustomTextStyles.titleMediumBold
                                      .copyWith(
                                          color: theme
                                              .colorScheme.primaryContainer))
                            ]));
                      },
                      itemBuilder: (context, model) {
                        return TodaysectionItemWidget(model);
                      },
                      separator: SizedBox(height: 14.v));
                }))));
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
        title: AppbarSubtitleTwo(text: "lbl_notification".tr),
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
