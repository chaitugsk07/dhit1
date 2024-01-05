// ignore_for_file: must_be_immutable

part of 'user_profile_tab_container_bloc.dart';

/// Represents the state of UserProfileTabContainer in the application.
class UserProfileTabContainerState extends Equatable {
  UserProfileTabContainerState({this.userProfileTabContainerModelObj});

  UserProfileTabContainerModel? userProfileTabContainerModelObj;

  @override
  List<Object?> get props => [
        userProfileTabContainerModelObj,
      ];
  UserProfileTabContainerState copyWith(
      {UserProfileTabContainerModel? userProfileTabContainerModelObj}) {
    return UserProfileTabContainerState(
      userProfileTabContainerModelObj: userProfileTabContainerModelObj ??
          this.userProfileTabContainerModelObj,
    );
  }
}
