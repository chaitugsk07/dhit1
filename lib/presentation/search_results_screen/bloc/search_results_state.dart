// ignore_for_file: must_be_immutable

part of 'search_results_bloc.dart';

/// Represents the state of SearchResults in the application.
class SearchResultsState extends Equatable {
  SearchResultsState({
    this.searchController,
    this.searchResultsModelObj,
  });

  TextEditingController? searchController;

  SearchResultsModel? searchResultsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultsModelObj,
      ];
  SearchResultsState copyWith({
    TextEditingController? searchController,
    SearchResultsModel? searchResultsModelObj,
  }) {
    return SearchResultsState(
      searchController: searchController ?? this.searchController,
      searchResultsModelObj:
          searchResultsModelObj ?? this.searchResultsModelObj,
    );
  }
}
