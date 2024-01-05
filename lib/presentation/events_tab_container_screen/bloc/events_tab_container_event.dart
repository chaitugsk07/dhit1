// ignore_for_file: must_be_immutable

part of 'events_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EventsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the EventsTabContainer widget is first created.
class EventsTabContainerInitialEvent extends EventsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
