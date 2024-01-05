import 'bloc/single_post_bloc.dart';
import 'models/single_post_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SinglePostBottomsheet extends StatelessWidget {
  const SinglePostBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SinglePostBloc>(
      create: (context) => SinglePostBloc(SinglePostState(
        singlePostModelObj: SinglePostModel(),
      ))
        ..add(SinglePostInitialEvent()),
      child: SinglePostBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 168.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgIndicatorOnLight,
        height: 5.v,
        width: 38.h,
        alignment: Alignment.center,
      ),
    );
  }
}
