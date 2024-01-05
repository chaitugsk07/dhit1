import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchviewTwo extends StatelessWidget {
  AppbarTitleSearchviewTwo({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 271.h,
        controller: controller,
        hintText: "msg_search_in_friends".tr,
        hintStyle: CustomTextStyles.titleSmallBluegray400,
      ),
    );
  }
}
