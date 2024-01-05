// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'messages_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {
  MessagesModel({this.messagesItemList = const []}) {}

  List<MessagesItemModel> messagesItemList;

  MessagesModel copyWith({List<MessagesItemModel>? messagesItemList}) {
    return MessagesModel(
      messagesItemList: messagesItemList ?? this.messagesItemList,
    );
  }

  @override
  List<Object?> get props => [messagesItemList];
}
