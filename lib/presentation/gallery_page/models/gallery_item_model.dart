import '../../../core/app_export.dart';

/// This class is used in the [gallery_item_widget] screen.
class GalleryItemModel {
  GalleryItemModel({
    this.image,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
    this.image6,
    this.image7,
    this.image8,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage99x99;
    image1 = image1 ?? ImageConstant.imgImage12;
    image2 = image2 ?? ImageConstant.imgImage13;
    image3 = image3 ?? ImageConstant.imgImage14;
    image4 = image4 ?? ImageConstant.imgImage15;
    image5 = image5 ?? ImageConstant.imgImage16;
    image6 = image6 ?? ImageConstant.imgImage17;
    image7 = image7 ?? ImageConstant.imgImage18;
    image8 = image8 ?? ImageConstant.imgImage19;
    id = id ?? "";
  }

  String? image;

  String? image1;

  String? image2;

  String? image3;

  String? image4;

  String? image5;

  String? image6;

  String? image7;

  String? image8;

  String? id;
}
