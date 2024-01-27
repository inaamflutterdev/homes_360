import 'package:flutter/material.dart';
import 'package:homes360/presentation/message_page/models/message_model.dart';

/// A provider class for the MessagePage.
///
/// This provider manages the state of the MessagePage, including the
/// current messageModelObj

// ignore_for_file: must_be_immutable
class MessageProvider extends ChangeNotifier {
  MessageModel messageModelObj = MessageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
