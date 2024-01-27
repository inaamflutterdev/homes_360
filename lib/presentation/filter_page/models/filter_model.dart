import 'package:homes360/data/models/selectionPopupModel/selection_popup_model.dart';import 'propertytypechipview_item_model.dart';import 'optionschipview_item_model.dart';import '../../../core/app_export.dart';class FilterModel {List<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)];

List<SelectionPopupModel> dropdownItemList1 = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)];

List<SelectionPopupModel> dropdownItemList2 = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)];

List<SelectionPopupModel> dropdownItemList3 = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)];

List<PropertytypechipviewItemModel> propertytypechipviewItemList = List.generate(5,(index) =>PropertytypechipviewItemModel());

List<OptionschipviewItemModel> optionschipviewItemList = List.generate(8,(index) =>OptionschipviewItemModel());

 }
