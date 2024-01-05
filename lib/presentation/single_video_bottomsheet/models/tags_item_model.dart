// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [tags_item_widget] screen.
class TagsItemModel extends Equatable {
  TagsItemModel({
    this.chipSmall,
    this.isSelected,
  }) {
    chipSmall = chipSmall ?? "Travel";
    isSelected = isSelected ?? false;
  }

  String? chipSmall;

  bool? isSelected;

  TagsItemModel copyWith({
    String? chipSmall,
    bool? isSelected,
  }) {
    return TagsItemModel(
      chipSmall: chipSmall ?? this.chipSmall,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [chipSmall, isSelected];
}
