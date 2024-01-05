import 'bloc/events_tab_container_bloc.dart';
import 'models/events_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/events_page/events_page.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/home_page/home_page.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_subtitle.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/custom_app_bar.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_bottom_bar.dart';

class EventsTabContainerScreen extends StatefulWidget {
  const EventsTabContainerScreen({Key? key}) : super(key: key);

  @override
  EventsTabContainerScreenState createState() =>
      EventsTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<EventsTabContainerBloc>(
        create: (context) => EventsTabContainerBloc(EventsTabContainerState(
            eventsTabContainerModelObj: EventsTabContainerModel()))
          ..add(EventsTabContainerInitialEvent()),
        child: EventsTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class EventsTabContainerScreenState extends State<EventsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsTabContainerBloc, EventsTabContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 37.v),
                    _buildTabview(context),
                    Expanded(
                        child: SizedBox(
                            height: 514.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  EventsPage(),
                                  EventsPage(),
                                  EventsPage(),
                                  EventsPage(),
                                  EventsPage()
                                ])))
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 68.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgRewindPrimarycontainer38x38,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 15.v)),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_events".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgIconNotification,
              margin: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v),
              onTap: () {
                onTapIconNotification(context);
              })
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 26.v,
        width: 347.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: theme.colorScheme.onPrimary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: appTheme.gray700,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
            indicatorColor: theme.colorScheme.onPrimary,
            tabs: [
              Tab(child: Text("lbl_anytime".tr)),
              Tab(child: Text("lbl_today".tr)),
              Tab(child: Text("lbl_tomorrow".tr)),
              Tab(child: Text("lbl_this_week".tr)),
              Tab(child: Text("lbl_this_month".tr))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.homePage;
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapIconNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }
}
