import 'package:flutter/material.dart';
import 'package:homes360/presentation/add_new_property_meet_with_a_agent_screen/models/add_new_property_meet_with_a_agent_model.dart';

/// A provider class for the AddNewPropertyMeetWithAAgentScreen.
///
/// This provider manages the state of the AddNewPropertyMeetWithAAgentScreen, including the
/// current addNewPropertyMeetWithAAgentModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyMeetWithAAgentProvider extends ChangeNotifier {
  AddNewPropertyMeetWithAAgentModel addNewPropertyMeetWithAAgentModelObj =
      AddNewPropertyMeetWithAAgentModel();

  DateTime? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }
}
