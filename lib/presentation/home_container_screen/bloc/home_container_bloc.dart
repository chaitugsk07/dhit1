import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/home_container_screen/models/home_container_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/new_post_bottomsheet/new_post_bottomsheet.dart';
part 'home_container_event.dart';
part 'home_container_state.dart';

/// A bloc that manages the state of a HomeContainer according to the event that is dispatched to it.
class HomeContainerBloc extends Bloc<HomeContainerEvent, HomeContainerState> {
  HomeContainerBloc(HomeContainerState initialState) : super(initialState) {
    on<HomeContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeContainerInitialEvent event,
    Emitter<HomeContainerState> emit,
  ) async {
    NavigatorService.pushNamed(
      AppRoutes.archivedMessageTabContainerScreen,
    );
    showModalBottomSheet(
        context: context,
        builder: (_) => NewPostBottomsheet.builder(context),
        isScrollControlled: true);
    NavigatorService.pushNamed(
      AppRoutes.eventsTabContainerScreen,
    );
    NavigatorService.pushNamed(
      AppRoutes.userProfileTabContainerScreen,
    );
  }
}
