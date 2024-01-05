// ignore_for_file: must_be_immutable

part of 'archived_message_tab_container_bloc.dart';

/// Represents the state of ArchivedMessageTabContainer in the application.
class ArchivedMessageTabContainerState extends Equatable {
  ArchivedMessageTabContainerState({this.archivedMessageTabContainerModelObj});

  ArchivedMessageTabContainerModel? archivedMessageTabContainerModelObj;

  @override
  List<Object?> get props => [
        archivedMessageTabContainerModelObj,
      ];
  ArchivedMessageTabContainerState copyWith(
      {ArchivedMessageTabContainerModel? archivedMessageTabContainerModelObj}) {
    return ArchivedMessageTabContainerState(
      archivedMessageTabContainerModelObj:
          archivedMessageTabContainerModelObj ??
              this.archivedMessageTabContainerModelObj,
    );
  }
}
