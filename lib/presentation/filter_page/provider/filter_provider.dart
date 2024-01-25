import 'package:flutter/material.dart';
import 'package:homes360/presentation/filter_page/models/filter_model.dart';

/// A provider class for the FilterPage.
///
/// This provider manages the state of the FilterPage, including the
/// current filterModelObj

// ignore_for_file: must_be_immutable
class FilterProvider extends ChangeNotifier {
  FilterModel filterModelObj = FilterModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in filterModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in filterModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in filterModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element in filterModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    filterModelObj.propertytypechipviewItemList.forEach((element) {
      element.isSelected = false;
    });
    filterModelObj.propertytypechipviewItemList[index].isSelected = value;
    notifyListeners();
  }

  void onSelectedChipView2(
    int index,
    bool value,
  ) {
    filterModelObj.optionschipviewItemList.forEach((element) {
      element.isSelected = false;
    });
    filterModelObj.optionschipviewItemList[index].isSelected = value;
    notifyListeners();
  }
}
