// ignore_for_file: must_be_immutable

part of 'my_friends_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyFriends widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyFriendsEvent extends Equatable {}

/// Event that is dispatched when the MyFriends widget is first created.
class MyFriendsInitialEvent extends MyFriendsEvent {
  @override
  List<Object?> get props => [];
}
