import '../messages_page/widgets/messages_item_widget.dart';
import 'bloc/messages_bloc.dart';
import 'models/messages_item_model.dart';
import 'models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/chat_bottomsheet/chat_bottomsheet.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  MessagesPageState createState() => MessagesPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesBloc>(
        create: (context) =>
            MessagesBloc(MessagesState(messagesModelObj: MessagesModel()))
              ..add(MessagesInitialEvent()),
        child: MessagesPage());
  }
}

class MessagesPageState extends State<MessagesPage>
    with AutomaticKeepAliveClientMixin<MessagesPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 31.v),
                  _buildMessages(context)
                ]))));
  }

  /// Section Widget
  Widget _buildMessages(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: BlocSelector<MessagesBloc, MessagesState, MessagesModel?>(
            selector: (state) => state.messagesModelObj,
            builder: (context, messagesModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 28.v);
                  },
                  itemCount: messagesModelObj?.messagesItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    MessagesItemModel model =
                        messagesModelObj?.messagesItemList[index] ??
                            MessagesItemModel();
                    return MessagesItemWidget(model, onTapMessage: () {
                      onTapMessage(context);
                    });
                  });
            }));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [ChatBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapMessage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChatBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
