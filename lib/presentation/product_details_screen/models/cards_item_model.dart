import '../../../core/app_export.dart';/// This class is used in the [cards_item_widget] screen.
class CardsItemModel {CardsItemModel({this.image, this.theNewSchoolAt, this.publicPrekEight, this.reviewsCounter, this.id, }) { image = image  ?? ImageConstant.imgRectangle4224;theNewSchoolAt = theNewSchoolAt  ?? "The New School At South Shore";publicPrekEight = publicPrekEight  ?? "Public, Prek-8 - 583 students - 0.4 mi";reviewsCounter = reviewsCounter  ?? "12 reviews";id = id  ?? ""; }

String? image;

String? theNewSchoolAt;

String? publicPrekEight;

String? reviewsCounter;

String? id;

 }
