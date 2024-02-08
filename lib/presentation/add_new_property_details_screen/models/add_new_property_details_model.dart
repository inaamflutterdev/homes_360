import 'addnewpropertydetails_item_model.dart';

class AddNewPropertyDetailsModel {
  List<AddnewpropertydetailsItemModel> addnewpropertydetailsItemList = [
    AddnewpropertydetailsItemModel(
        estimatePrice: "Estimate price", price: "4,200.00", widget: "-4%"),
    AddnewpropertydetailsItemModel(
        estimatePrice: "Sale activity", price: "1 Sold", widget: "+102.6%"),
    AddnewpropertydetailsItemModel(
        estimatePrice: "Average price", price: "4,600.00", widget: "+23.6%")
  ];
}
