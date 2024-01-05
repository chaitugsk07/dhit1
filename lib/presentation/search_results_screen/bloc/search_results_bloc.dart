import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/search_results_screen/models/search_results_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/single_post_bottomsheet/single_post_bottomsheet.dart';
part 'search_results_event.dart';
part 'search_results_state.dart';

/// A bloc that manages the state of a SearchResults according to the event that is dispatched to it.
class SearchResultsBloc extends Bloc<SearchResultsEvent, SearchResultsState> {
  SearchResultsBloc(SearchResultsState initialState) : super(initialState) {
    on<SearchResultsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsInitialEvent event,
    Emitter<SearchResultsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    showModalBottomSheet(
        context: context,
        builder: (_) => SinglePostBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
