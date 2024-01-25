/// This class is used in the [propertylist_item_widget] screen.
class PropertylistItemModel {
  PropertylistItemModel({
    this.primaryApartment,
    this.three,
    this.two,
    this.price,
    this.id,
  }) {
    primaryApartment = primaryApartment ?? "Primary Apartment";
    three = three ?? "3";
    two = two ?? "2";
    price = price ?? "1,600 - 1,800 ";
    id = id ?? "";
  }

  String? primaryApartment;

  String? three;

  String? two;

  String? price;

  String? id;
}
