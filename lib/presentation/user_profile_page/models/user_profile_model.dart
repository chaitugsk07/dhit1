// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [user_profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class UserProfileModel extends Equatable {
  UserProfileModel() {}

  UserProfileModel copyWith() {
    return UserProfileModel();
  }

  @override
  List<Object?> get props => [];
}
