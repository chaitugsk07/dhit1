// ignore_for_file: must_be_immutable

part of 'my_friends_bloc.dart';

/// Represents the state of MyFriends in the application.
class MyFriendsState extends Equatable {
  MyFriendsState({
    this.searchController,
    this.myFriendsModelObj,
  });

  TextEditingController? searchController;

  MyFriendsModel? myFriendsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        myFriendsModelObj,
      ];
  MyFriendsState copyWith({
    TextEditingController? searchController,
    MyFriendsModel? myFriendsModelObj,
  }) {
    return MyFriendsState(
      searchController: searchController ?? this.searchController,
      myFriendsModelObj: myFriendsModelObj ?? this.myFriendsModelObj,
    );
  }
}
