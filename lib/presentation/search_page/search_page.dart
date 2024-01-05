import '../search_page/widgets/search_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(SearchState(
        searchModelObj: SearchModel(),
      ))
        ..add(SearchInitialEvent()),
      child: SearchPage(),
    );
  }
}

class SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildSearch(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
          selector: (state) => state.searchModelObj,
          builder: (context, searchModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 470.v,
                crossAxisCount: 1,
                mainAxisSpacing: 1.h,
                crossAxisSpacing: 1.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount: searchModelObj?.searchItemList.length ?? 0,
              itemBuilder: (context, index) {
                SearchItemModel model =
                    searchModelObj?.searchItemList[index] ?? SearchItemModel();
                return SearchItemWidget(
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
