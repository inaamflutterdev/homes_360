import 'package:flutter/material.dart';
import 'package:homes360/presentation/add_new_property_home_facts_screen/models/add_new_property_home_facts_model.dart';

/// A provider class for the AddNewPropertyHomeFactsScreen.
///
/// This provider manages the state of the AddNewPropertyHomeFactsScreen, including the
/// current addNewPropertyHomeFactsModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyHomeFactsProvider extends ChangeNotifier {
  TextEditingController inputFieldsController = TextEditingController();

  TextEditingController inputFieldsController1 = TextEditingController();

  TextEditingController inputFieldsController2 = TextEditingController();

  TextEditingController inputFieldsController3 = TextEditingController();

  TextEditingController inputFieldsController4 = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  AddNewPropertyHomeFactsModel addNewPropertyHomeFactsModelObj =
      AddNewPropertyHomeFactsModel();

  @override
  void dispose() {
    super.dispose();
    inputFieldsController.dispose();
    inputFieldsController1.dispose();
    inputFieldsController2.dispose();
    inputFieldsController3.dispose();
    inputFieldsController4.dispose();
    priceController.dispose();
    priceController1.dispose();
  }

  onSelected(dynamic value) {
    for (var element in addNewPropertyHomeFactsModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
