import 'package:flutter/material.dart';
import 'package:homes360/presentation/add_new_property_contact_screen/models/add_new_property_contact_model.dart';
import 'package:country_pickers/country.dart';

///
/// This provider manages the state of the AddNewPropertyContactScreen, including the
/// current addNewPropertyContactModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyContactProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  AddNewPropertyContactModel addNewPropertyContactModelObj =
      AddNewPropertyContactModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
