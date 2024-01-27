import 'package:flutter/material.dart';
import 'package:homes360/presentation/home_listing_draw_screen/models/home_listing_draw_model.dart';

/// A provider class for the HomeListingDrawScreen.
///
/// This provider manages the state of the HomeListingDrawScreen, including the
/// current homeListingDrawModelObj
class HomeListingDrawProvider extends ChangeNotifier {
  HomeListingDrawModel homeListingDrawModelObj = HomeListingDrawModel();

  @override
  void dispose() {
    super.dispose();
  }
}
