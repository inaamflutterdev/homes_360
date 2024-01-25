import 'imageanddetails_item_model.dart';import '../../../core/app_export.dart';import 'images_item_model.dart';import 'cards_item_model.dart';class ProductDetailsModel {List<ImageanddetailsItemModel> imageanddetailsItemList = List.generate(1,(index) => ImageanddetailsItemModel());

List<ImagesItemModel> imagesItemList = [ImagesItemModel(one:ImageConstant.img1)];

List<CardsItemModel> cardsItemList = [CardsItemModel(image:ImageConstant.imgRectangle4224,theNewSchoolAt: "The New School At South Shore",publicPrekEight: "Public, Prek-8 - 583 students - 0.4 mi",reviewsCounter: "12 reviews"),CardsItemModel(image:ImageConstant.imgRectangle422462x62,theNewSchoolAt: "Wing Luke Elementary School",publicPrekEight: "Public, K-5 - 331 students - 0.4 mi",reviewsCounter: "0 reviews"),CardsItemModel(image:ImageConstant.imgRectangle42241,theNewSchoolAt: "Pathfinder K-8",publicPrekEight: "Public, K-8 - 488 students - 4.5 mi")];

 }
