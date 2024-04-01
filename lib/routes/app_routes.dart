import 'package:flutter/material.dart';
import '../presentation/iphone_11_pro_max_four_container_screen/iphone_11_pro_max_four_container_screen.dart';
import '../presentation/iphone_11_pro_max_five_screen/iphone_11_pro_max_five_screen.dart';
import '../presentation/iphone_11_pro_max_six_tab_container_screen/iphone_11_pro_max_six_tab_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone11ProMaxFourContainerScreen =
      '/iphone_11_pro_max_four_container_screen';

  static const String iphone11ProMaxFourContainer1Page =
      '/iphone_11_pro_max_four_container1_page';

  static const String iphone11ProMaxFiveScreen =
      '/iphone_11_pro_max_five_screen';

  static const String iphone11ProMaxSixPage = '/iphone_11_pro_max_six_page';

  static const String iphone11ProMaxSixTabContainerScreen =
      '/iphone_11_pro_max_six_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone11ProMaxFourContainerScreen: (context) =>
        Iphone11ProMaxFourContainerScreen(),
    iphone11ProMaxFiveScreen: (context) => Iphone11ProMaxFiveScreen(),
    iphone11ProMaxSixTabContainerScreen: (context) =>
        Iphone11ProMaxSixTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
