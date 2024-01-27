class AddnewpropertydetailsItemModel {
  AddnewpropertydetailsItemModel({
    this.estimatePrice,
    this.price,
    this.widget,
    this.id,
  }) {
    estimatePrice = estimatePrice ?? "Estimate price";
    price = price ?? "4,200.00";
    widget = widget ?? "-4%";
    id = id ?? "";
  }

  String? estimatePrice;

  String? price;

  String? widget;

  String? id;
}
