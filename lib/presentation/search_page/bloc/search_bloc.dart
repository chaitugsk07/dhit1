import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/search_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/search_page/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      searchItemList: fillSearchItemList(),
    )));
  }

  List<SearchItemModel> fillSearchItemList() {
    return [
      SearchItemModel(
          edwardFord: ImageConstant.imgThumbnail,
          username: "Edward Ford",
          edwardFord1: ImageConstant.imgThumbnail229x154,
          edwardFord2: ImageConstant.imgImage6,
          username1: "Edward Ford",
          edwardFord3: ImageConstant.imgThumbnail1,
          edwardFord4: ImageConstant.imgImage7,
          username2: "Edward Ford",
          edwardFord5: ImageConstant.imgThumbnail2,
          edwardFord6: ImageConstant.imgImage8,
          username3: "Edward Ford")
    ];
  }
}
