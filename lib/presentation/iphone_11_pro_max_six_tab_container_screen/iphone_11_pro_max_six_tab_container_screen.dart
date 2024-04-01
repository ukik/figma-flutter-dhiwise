import 'package:yuvoria_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yuvoria_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:yuvoria_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yuvoria_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:yuvoria_s_application/widgets/custom_elevated_button.dart';
import 'package:yuvoria_s_application/presentation/iphone_11_pro_max_six_page/iphone_11_pro_max_six_page.dart';
import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

class Iphone11ProMaxSixTabContainerScreen extends StatefulWidget {
  const Iphone11ProMaxSixTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxSixTabContainerScreenState createState() =>
      Iphone11ProMaxSixTabContainerScreenState();
}

class Iphone11ProMaxSixTabContainerScreenState
    extends State<Iphone11ProMaxSixTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 16.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse11126x126,
                  height: 126.adaptSize,
                  width: 126.adaptSize,
                  radius: BorderRadius.circular(
                    63.h,
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "Purnima Khan",
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  "Guidhali School of Music and Drama",
                  style: CustomTextStyles.bodyLargePoppinsIndigo200,
                ),
                Text(
                  "London, UK",
                  style: CustomTextStyles.bodyLargePoppinsIndigo200,
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 47.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Events",
                            style: CustomTextStyles.titleMediumPoppinsIndigo200,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "456",
                            style:
                                CustomTextStyles.titleMediumPoppinsBluegray700,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Followers",
                            style: CustomTextStyles.titleMediumPoppinsIndigo200,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "602",
                            style:
                                CustomTextStyles.titleMediumPoppinsBluegray700,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Following",
                            style: CustomTextStyles.titleMediumPoppinsIndigo200,
                          ),
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: Text(
                              "290",
                              style: CustomTextStyles
                                  .titleMediumPoppinsBluegray700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.v),
                CustomElevatedButton(
                  width: 145.h,
                  text: "Edit Profile",
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 23.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBxbxedit,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientPurpleAToBlueADecoration,
                ),
                SizedBox(height: 36.v),
                Container(
                  height: 36.v,
                  width: 203.h,
                  margin: EdgeInsets.only(left: 96.h),
                  decoration: BoxDecoration(
                    color: appTheme.indigo300,
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
                  ),
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.indigo300,
                    labelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelColor: appTheme.whiteA700,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    indicatorPadding: EdgeInsets.all(
                      4.0.h,
                    ),
                    indicator: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        14.h,
                      ),
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          "Hosting",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Attending",
                        ),
                      ),
                    ],
                  ),
                ),
                _buildTabBarView(context),
              ],
            ),
          ),
        ),
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
          top: 17.v,
          bottom: 14.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Profile",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup12,
          margin: EdgeInsets.fromLTRB(31.h, 18.v, 31.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 375.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          Iphone11ProMaxSixPage(),
          Iphone11ProMaxSixPage(),
        ],
      ),
    );
  }
}
