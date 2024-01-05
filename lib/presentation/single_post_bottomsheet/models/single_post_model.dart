// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [single_post_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SinglePostModel extends Equatable {
  SinglePostModel() {}

  SinglePostModel copyWith() {
    return SinglePostModel();
  }

  @override
  List<Object?> get props => [];
}
