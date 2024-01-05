import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sixtyseven_item_model.dart';
import '../models/eightytwo_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            sixtysevenItemList: fillSixtysevenItemList(),
            eightytwoItemList: fillEightytwoItemList())));
  }

  List<SixtysevenItemModel> fillSixtysevenItemList() {
    return [SixtysevenItemModel(close: ImageConstant.imgClose)];
  }

  List<EightytwoItemModel> fillEightytwoItemList() {
    return [
      EightytwoItemModel(
          name: "Dustin Houston",
          time: "5 min ago",
          copy: "Whether its a driving tour 😂",
          label: "326",
          label1: "148",
          label2: "Share"),
      EightytwoItemModel(copy: "Whether its a driving tour 😂")
    ];
  }
}
