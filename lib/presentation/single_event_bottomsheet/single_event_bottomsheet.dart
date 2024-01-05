import 'bloc/single_event_bloc.dart';
import 'models/single_event_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SingleEventBottomsheet extends StatelessWidget {
  const SingleEventBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleEventBloc>(
      create: (context) => SingleEventBloc(SingleEventState(
        singleEventModelObj: SingleEventModel(),
      ))
        ..add(SingleEventInitialEvent()),
      child: SingleEventBottomsheet(),
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
