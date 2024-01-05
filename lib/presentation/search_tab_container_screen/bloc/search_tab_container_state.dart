// ignore_for_file: must_be_immutable

part of 'search_tab_container_bloc.dart';

/// Represents the state of SearchTabContainer in the application.
class SearchTabContainerState extends Equatable {
  SearchTabContainerState({
    this.searchController,
    this.searchTabContainerModelObj,
  });

  TextEditingController? searchController;

  SearchTabContainerModel? searchTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchTabContainerModelObj,
      ];
  SearchTabContainerState copyWith({
    TextEditingController? searchController,
    SearchTabContainerModel? searchTabContainerModelObj,
  }) {
    return SearchTabContainerState(
      searchController: searchController ?? this.searchController,
      searchTabContainerModelObj:
          searchTabContainerModelObj ?? this.searchTabContainerModelObj,
    );
  }
}
