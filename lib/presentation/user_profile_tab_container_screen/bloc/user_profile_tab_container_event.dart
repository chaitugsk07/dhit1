// ignore_for_file: must_be_immutable

part of 'user_profile_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserProfileTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserProfileTabContainerEvent extends Equatable {}

/// Event that is dispatched when the UserProfileTabContainer widget is first created.
class UserProfileTabContainerInitialEvent extends UserProfileTabContainerEvent {
  @override
  List<Object?> get props => [];
}
