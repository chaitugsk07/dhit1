import '../events_page/widgets/events_item_widget.dart';
import 'bloc/events_bloc.dart';
import 'models/events_item_model.dart';
import 'models/events_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EventsPage extends StatefulWidget {
  const EventsPage({Key? key})
      : super(
          key: key,
        );

  @override
  EventsPageState createState() => EventsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EventsBloc>(
      create: (context) => EventsBloc(EventsState(
        eventsModelObj: EventsModel(),
      ))
        ..add(EventsInitialEvent()),
      child: EventsPage(),
    );
  }
}

class EventsPageState extends State<EventsPage>
    with AutomaticKeepAliveClientMixin<EventsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              _buildEvents(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEvents(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: BlocSelector<EventsBloc, EventsState, EventsModel?>(
          selector: (state) => state.eventsModelObj,
          builder: (context, eventsModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 18.v,
                );
              },
              itemCount: eventsModelObj?.eventsItemList.length ?? 0,
              itemBuilder: (context, index) {
                EventsItemModel model =
                    eventsModelObj?.eventsItemList[index] ?? EventsItemModel();
                return EventsItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
