// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'tags_item_model.dart';

/// This class defines the variables used in the [single_video_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleVideoModel extends Equatable {
  SingleVideoModel({this.tagsItemList = const []}) {}

  List<TagsItemModel> tagsItemList;

  SingleVideoModel copyWith({List<TagsItemModel>? tagsItemList}) {
    return SingleVideoModel(
      tagsItemList: tagsItemList ?? this.tagsItemList,
    );
  }

  @override
  List<Object?> get props => [tagsItemList];
}
