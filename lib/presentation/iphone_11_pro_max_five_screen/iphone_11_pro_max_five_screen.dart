import 'package:yuvoria_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yuvoria_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:yuvoria_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yuvoria_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:yuvoria_s_application/widgets/custom_search_view.dart';
import 'widgets/sixtyone_item_widget.dart';
import 'package:yuvoria_s_application/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

class Iphone11ProMaxFiveScreen extends StatelessWidget {
  Iphone11ProMaxFiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.lightBlue50,
                appTheme.whiteA700,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 27.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.h,
                    right: 30.h,
                  ),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search a friend",
                  ),
                ),
                SizedBox(height: 35.v),
                _buildSixtyOne(context),
                SizedBox(height: 80.v),
              ],
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Conversations",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup12,
          margin: EdgeInsets.fromLTRB(31.h, 17.v, 31.h, 16.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 16.h,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 31.v,
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return SixtyoneItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 67,
      width: 67,
      child: Icon(
        Icons.add,
      ),
    );
  }
}
