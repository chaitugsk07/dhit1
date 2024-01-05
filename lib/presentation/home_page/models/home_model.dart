// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sixtyseven_item_model.dart';
import 'eightytwo_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.sixtysevenItemList = const [],
    this.eightytwoItemList = const [],
  }) {}

  List<SixtysevenItemModel> sixtysevenItemList;

  List<EightytwoItemModel> eightytwoItemList;

  HomeModel copyWith({
    List<SixtysevenItemModel>? sixtysevenItemList,
    List<EightytwoItemModel>? eightytwoItemList,
  }) {
    return HomeModel(
      sixtysevenItemList: sixtysevenItemList ?? this.sixtysevenItemList,
      eightytwoItemList: eightytwoItemList ?? this.eightytwoItemList,
    );
  }

  @override
  List<Object?> get props => [sixtysevenItemList, eightytwoItemList];
}
