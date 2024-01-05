import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/user_profile_tab_container_screen/models/user_profile_tab_container_model.dart';
part 'user_profile_tab_container_event.dart';
part 'user_profile_tab_container_state.dart';

/// A bloc that manages the state of a UserProfileTabContainer according to the event that is dispatched to it.
class UserProfileTabContainerBloc
    extends Bloc<UserProfileTabContainerEvent, UserProfileTabContainerState> {
  UserProfileTabContainerBloc(UserProfileTabContainerState initialState)
      : super(initialState) {
    on<UserProfileTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserProfileTabContainerInitialEvent event,
    Emitter<UserProfileTabContainerState> emit,
  ) async {}
}
