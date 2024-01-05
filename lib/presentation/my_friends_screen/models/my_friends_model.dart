// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'myfriends_item_model.dart';

/// This class defines the variables used in the [my_friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyFriendsModel extends Equatable {
  MyFriendsModel({this.myfriendsItemList = const []}) {}

  List<MyfriendsItemModel> myfriendsItemList;

  MyFriendsModel copyWith({List<MyfriendsItemModel>? myfriendsItemList}) {
    return MyFriendsModel(
      myfriendsItemList: myfriendsItemList ?? this.myfriendsItemList,
    );
  }

  @override
  List<Object?> get props => [myfriendsItemList];
}
