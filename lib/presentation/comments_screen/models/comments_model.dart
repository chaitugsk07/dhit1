// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'comments_item_model.dart';

/// This class defines the variables used in the [comments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CommentsModel extends Equatable {
  CommentsModel({this.commentsItemList = const []}) {}

  List<CommentsItemModel> commentsItemList;

  CommentsModel copyWith({List<CommentsItemModel>? commentsItemList}) {
    return CommentsModel(
      commentsItemList: commentsItemList ?? this.commentsItemList,
    );
  }

  @override
  List<Object?> get props => [commentsItemList];
}
