/// This class is used in the [addnewpropertyreasonsellinghome_item_widget] screen.
class AddnewpropertyreasonsellinghomeItemModel {
  AddnewpropertyreasonsellinghomeItemModel({
    this.upgradingMyHome,
    this.id,
  }) {
    upgradingMyHome = upgradingMyHome ?? "Upgrading my home";
    id = id ?? "";
  }

  String? upgradingMyHome;

  String? id;
}
