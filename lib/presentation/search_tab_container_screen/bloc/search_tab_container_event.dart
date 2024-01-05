// ignore_for_file: must_be_immutable

part of 'search_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchTabContainer widget is first created.
class SearchTabContainerInitialEvent extends SearchTabContainerEvent {
  @override
  List<Object?> get props => [];
}
