// ignore_for_file: must_be_immutable

part of 'single_video_bloc.dart';

/// Represents the state of SingleVideo in the application.
class SingleVideoState extends Equatable {
  SingleVideoState({this.singleVideoModelObj});

  SingleVideoModel? singleVideoModelObj;

  @override
  List<Object?> get props => [
        singleVideoModelObj,
      ];
  SingleVideoState copyWith({SingleVideoModel? singleVideoModelObj}) {
    return SingleVideoState(
      singleVideoModelObj: singleVideoModelObj ?? this.singleVideoModelObj,
    );
  }
}
