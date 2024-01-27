import '../../../core/app_export.dart';import 'package:flutter/material.dart';/// This class is used in the [selectvirtualapp_item_widget] screen.
class SelectvirtualappItemModel {SelectvirtualappItemModel({this.whatsapp, this.whatsapp1, this.recommend, this.check, this.emailController, this.id, }) { whatsapp = whatsapp  ?? ImageConstant.imgWhatsapp;whatsapp1 = whatsapp1  ?? "Whatsapp";recommend = recommend  ?? "Recommend";check = check  ?? ImageConstant.imgCheck;emailController = emailController  ?? TextEditingController();id = id  ?? ""; }

String? whatsapp;

String? whatsapp1;

String? recommend;

String? check;

TextEditingController? emailController;

String? id;

 }
