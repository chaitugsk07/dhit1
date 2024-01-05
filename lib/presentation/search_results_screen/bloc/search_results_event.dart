// ignore_for_file: must_be_immutable

part of 'search_results_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResults widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultsEvent extends Equatable {}

/// Event that is dispatched when the SearchResults widget is first created.
class SearchResultsInitialEvent extends SearchResultsEvent {
  @override
  List<Object?> get props => [];
}
