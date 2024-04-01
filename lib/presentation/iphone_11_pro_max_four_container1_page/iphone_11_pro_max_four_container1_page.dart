import 'package:yuvoria_s_application/widgets/custom_icon_button.dart';
import 'widgets/fiftyeight_item_widget.dart';
import 'widgets/sixty_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourContainer1Page extends StatelessWidget {
  const Iphone11ProMaxFourContainer1Page({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
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
            decoration: AppDecoration.gradientLightBlueToWhiteA,
            child: Column(
              children: [
                SizedBox(height: 38.v),
                _buildSixtyThree(context),
                SizedBox(height: 30.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Text(
                      "Your Featured Stories",
                      style: CustomTextStyles.bodyMediumMerriweatherBlueA400,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildFiftyEight(context),
                SizedBox(height: 36.v),
                _buildSixty(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,",
                style: CustomTextStyles.bodyLargeMerriweatherBlueA100,
              ),
              SizedBox(height: 4.v),
              Text(
                "Anastasia",
                style: theme.textTheme.headlineMedium,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 46.adaptSize,
              width: 46.adaptSize,
              padding: EdgeInsets.all(13.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSearch,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyEight(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 54.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 23.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return FiftyeightItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 27.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return SixtyItemWidget();
        },
      ),
    );
  }
}
