import 'bloc/single_story_bloc.dart';
import 'models/single_story_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_text_form_field.dart';

class SingleStoryScreen extends StatelessWidget {
  const SingleStoryScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleStoryBloc>(
      create: (context) => SingleStoryBloc(SingleStoryState(
        singleStoryModelObj: SingleStoryModel(),
      ))
        ..add(SingleStoryInitialEvent()),
      child: SingleStoryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        resizeToAvoidBottomInset: false,
        body: Container(
          height: 668.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnail622x375,
                height: 622.v,
                width: 375.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHead,
                height: 38.v,
                width: 339.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 18.v),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildComment(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildComment(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 28.h,
        bottom: 52.v,
      ),
      child: BlocSelector<SingleStoryBloc, SingleStoryState,
          TextEditingController?>(
        selector: (state) => state.commentController,
        builder: (context, commentController) {
          return CustomTextFormField(
            controller: commentController,
            hintText: "msg_write_a_comment".tr,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 15.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgSave,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL4,
          );
        },
      ),
    );
  }
}
