// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'archivedmessage_item_model.dart';

/// This class defines the variables used in the [archived_message_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ArchivedMessageModel extends Equatable {
  ArchivedMessageModel({this.archivedmessageItemList = const []}) {}

  List<ArchivedmessageItemModel> archivedmessageItemList;

  ArchivedMessageModel copyWith(
      {List<ArchivedmessageItemModel>? archivedmessageItemList}) {
    return ArchivedMessageModel(
      archivedmessageItemList:
          archivedmessageItemList ?? this.archivedmessageItemList,
    );
  }

  @override
  List<Object?> get props => [archivedmessageItemList];
}
