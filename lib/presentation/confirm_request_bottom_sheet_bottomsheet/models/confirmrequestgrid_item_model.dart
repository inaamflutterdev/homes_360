import '../../../core/app_export.dart';/// This class is used in the [confirmrequestgrid_item_widget] screen.
class ConfirmrequestgridItemModel {ConfirmrequestgridItemModel({this.home, this.homeClosed, this.twentyFive, this.id, }) { home = home  ?? ImageConstant.imgHomePrimary;homeClosed = homeClosed  ?? "Home Closed";twentyFive = twentyFive  ?? "25";id = id  ?? ""; }

String? home;

String? homeClosed;

String? twentyFive;

String? id;

 }
