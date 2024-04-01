import 'package:yuvoria_s_application/presentation/iphone_11_pro_max_four_container1_page/iphone_11_pro_max_four_container1_page.dart';
import 'package:yuvoria_s_application/widgets/custom_bottom_app_bar.dart';
import 'package:yuvoria_s_application/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourContainerScreen extends StatelessWidget {
  Iphone11ProMaxFourContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.lightBlue50, appTheme.whiteA700],
            ),
          ),
          child: Navigator(
            key: navigatorKey,
            initialRoute: AppRoutes.iphone11ProMaxFourContainer1Page,
            onGenerateRoute: (routeSetting) => PageRouteBuilder(
              pageBuilder: (ctx, ani, ani1) =>
                  getCurrentPage(routeSetting.name!),
              transitionDuration: Duration(seconds: 0),
            ),
          ),
        ),
        bottomNavigationBar: _buildAntDesignHomeFilled(context),
        floatingActionButton: CustomFloatingButton(
          height: 64,
          width: 64,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup202,
            height: 32.0.v,
            width: 32.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildAntDesignHomeFilled(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Antdesignhomefilled:
        return AppRoutes.iphone11ProMaxFourContainer1Page;
      case BottomBarEnum.Clarityemailsolidbadged:
        return "/";
      case BottomBarEnum.Claritynotific:
        return "/";
      case BottomBarEnum.Profileuser1:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone11ProMaxFourContainer1Page:
        return Iphone11ProMaxFourContainer1Page();
      default:
        return DefaultWidget();
    }
  }
}
