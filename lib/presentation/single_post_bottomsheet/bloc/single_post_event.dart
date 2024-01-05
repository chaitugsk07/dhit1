// ignore_for_file: must_be_immutable

part of 'single_post_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SinglePost widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SinglePostEvent extends Equatable {}

/// Event that is dispatched when the SinglePost widget is first created.
class SinglePostInitialEvent extends SinglePostEvent {
  @override
  List<Object?> get props => [];
}
