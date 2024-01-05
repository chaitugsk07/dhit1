import '../../../core/app_export.dart';

/// This class is used in the [search_item_widget] screen.
class SearchItemModel {
  SearchItemModel({
    this.edwardFord,
    this.username,
    this.edwardFord1,
    this.edwardFord2,
    this.username1,
    this.edwardFord3,
    this.edwardFord4,
    this.username2,
    this.edwardFord5,
    this.edwardFord6,
    this.username3,
    this.id,
  }) {
    edwardFord = edwardFord ?? ImageConstant.imgThumbnail;
    username = username ?? "Edward Ford";
    edwardFord1 = edwardFord1 ?? ImageConstant.imgThumbnail229x154;
    edwardFord2 = edwardFord2 ?? ImageConstant.imgImage6;
    username1 = username1 ?? "Edward Ford";
    edwardFord3 = edwardFord3 ?? ImageConstant.imgThumbnail1;
    edwardFord4 = edwardFord4 ?? ImageConstant.imgImage7;
    username2 = username2 ?? "Edward Ford";
    edwardFord5 = edwardFord5 ?? ImageConstant.imgThumbnail2;
    edwardFord6 = edwardFord6 ?? ImageConstant.imgImage8;
    username3 = username3 ?? "Edward Ford";
    id = id ?? "";
  }

  String? edwardFord;

  String? username;

  String? edwardFord1;

  String? edwardFord2;

  String? username1;

  String? edwardFord3;

  String? edwardFord4;

  String? username2;

  String? edwardFord5;

  String? edwardFord6;

  String? username3;

  String? id;
}
