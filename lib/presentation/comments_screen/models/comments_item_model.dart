import '../../../core/app_export.dart';

/// This class is used in the [comments_item_widget] screen.
class CommentsItemModel {
  CommentsItemModel({
    this.name,
    this.time,
    this.copy,
    this.image,
    this.id,
  }) {
    name = name ?? "Billy Green";
    time = time ?? "20min ago";
    copy = copy ??
        "Awesome Edward, remember that five tips for low cost holidays I sent you?";
    image = image ?? ImageConstant.imgFavoriteSecondarycontainer;
    id = id ?? "";
  }

  String? name;

  String? time;

  String? copy;

  String? image;

  String? id;
}
