// ignore_for_file: must_be_immutable

part of 'archived_message_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ArchivedMessageTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArchivedMessageTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ArchivedMessageTabContainer widget is first created.
class ArchivedMessageTabContainerInitialEvent
    extends ArchivedMessageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
