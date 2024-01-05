// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [single_event_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleEventModel extends Equatable {
  SingleEventModel() {}

  SingleEventModel copyWith() {
    return SingleEventModel();
  }

  @override
  List<Object?> get props => [];
}
