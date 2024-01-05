import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

class ChatBottomsheet extends StatelessWidget {
  const ChatBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(ChatState(chatModelObj: ChatModel()))
          ..add(ChatInitialEvent()),
        child: ChatBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 168.h, vertical: 22.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL32),
        child: CustomImageView(
            imagePath: ImageConstant.imgIndicatorOnLight,
            height: 5.v,
            width: 38.h,
            alignment: Alignment.center));
  }
}
