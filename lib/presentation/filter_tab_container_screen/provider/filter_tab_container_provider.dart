import 'package:flutter/material.dart';
import 'package:homes360/presentation/filter_tab_container_screen/models/filter_tab_container_model.dart';

/// A provider class for the FilterTabContainerScreen.
///
/// This provider manages the state of the FilterTabContainerScreen, including the
/// current filterTabContainerModelObj
class FilterTabContainerProvider extends ChangeNotifier {
  FilterTabContainerModel filterTabContainerModelObj =
      FilterTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
