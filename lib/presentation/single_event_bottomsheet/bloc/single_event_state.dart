// ignore_for_file: must_be_immutable

part of 'single_event_bloc.dart';

/// Represents the state of SingleEvent in the application.
class SingleEventState extends Equatable {
  SingleEventState({this.singleEventModelObj});

  SingleEventModel? singleEventModelObj;

  @override
  List<Object?> get props => [
        singleEventModelObj,
      ];
  SingleEventState copyWith({SingleEventModel? singleEventModelObj}) {
    return SingleEventState(
      singleEventModelObj: singleEventModelObj ?? this.singleEventModelObj,
    );
  }
}
