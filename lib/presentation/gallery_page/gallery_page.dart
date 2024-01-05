import '../gallery_page/widgets/gallery_item_widget.dart';
import 'bloc/gallery_bloc.dart';
import 'models/gallery_item_model.dart';
import 'models/gallery_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key})
      : super(
          key: key,
        );

  @override
  GalleryPageState createState() => GalleryPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<GalleryBloc>(
      create: (context) => GalleryBloc(GalleryState(
        galleryModelObj: GalleryModel(),
      ))
        ..add(GalleryInitialEvent()),
      child: GalleryPage(),
    );
  }
}

class GalleryPageState extends State<GalleryPage>
    with AutomaticKeepAliveClientMixin<GalleryPage> {
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
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: BlocSelector<GalleryBloc, GalleryState, GalleryModel?>(
                  selector: (state) => state.galleryModelObj,
                  builder: (context, galleryModelObj) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 320.v,
                        crossAxisCount: 1,
                        mainAxisSpacing: 1.h,
                        crossAxisSpacing: 1.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: galleryModelObj?.galleryItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        GalleryItemModel model =
                            galleryModelObj?.galleryItemList[index] ??
                                GalleryItemModel();
                        return GalleryItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
