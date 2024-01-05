import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/myfriends_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/my_friends_screen/models/my_friends_model.dart';
part 'my_friends_event.dart';
part 'my_friends_state.dart';

/// A bloc that manages the state of a MyFriends according to the event that is dispatched to it.
class MyFriendsBloc extends Bloc<MyFriendsEvent, MyFriendsState> {
  MyFriendsBloc(MyFriendsState initialState) : super(initialState) {
    on<MyFriendsInitialEvent>(_onInitialize);
  }

  List<MyfriendsItemModel> fillMyfriendsItemList() {
    return [
      MyfriendsItemModel(username: "Logan Nasser", fullname: "@louisaingram"),
      MyfriendsItemModel(username: "Logan Nasser", fullname: "@louisaingram"),
      MyfriendsItemModel(username: "Logan Nasser", fullname: "@louisaingram"),
      MyfriendsItemModel(username: "Logan Nasser", fullname: "@louisaingram"),
      MyfriendsItemModel(username: "Logan Nasser", fullname: "@louisaingram")
    ];
  }

  _onInitialize(
    MyFriendsInitialEvent event,
    Emitter<MyFriendsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        myFriendsModelObj: state.myFriendsModelObj
            ?.copyWith(myfriendsItemList: fillMyfriendsItemList())));
  }
}
