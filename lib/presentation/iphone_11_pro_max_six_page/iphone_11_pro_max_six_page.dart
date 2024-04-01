import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxSixPage extends StatefulWidget {
  const Iphone11ProMaxSixPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxSixPageState createState() => Iphone11ProMaxSixPageState();
}

class Iphone11ProMaxSixPageState extends State<Iphone11ProMaxSixPage>
    with AutomaticKeepAliveClientMixin<Iphone11ProMaxSixPage> {
  @override
  bool get wantKeepAlive => true;
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
                SizedBox(height: 57.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    right: 17.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle546,
                        width: 184.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle547,
                              height: 137.v,
                              radius: BorderRadius.circular(
                                15.h,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle548,
                              height: 117.v,
                              radius: BorderRadius.circular(
                                15.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
