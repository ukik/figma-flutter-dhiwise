import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgAntDesignHomeFilled,
        activeIcon: ImageConstant.imgAntDesignHomeFilled,
        type: BottomBarEnum.Antdesignhomefilled,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgClarityEmailSolidBadged,
      activeIcon: ImageConstant.imgClarityEmailSolidBadged,
      type: BottomBarEnum.Clarityemailsolidbadged,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgClarityNotific,
      activeIcon: ImageConstant.imgClarityNotific,
      type: BottomBarEnum.Claritynotific,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfileUser1,
      activeIcon: ImageConstant.imgProfileUser1,
      type: BottomBarEnum.Profileuser1,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: appTheme.gray50,
      child: SizedBox(
        height: 95.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        color: appTheme.blueA400,
                      )
                    : CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        color: appTheme.blueA400,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Antdesignhomefilled,
  Clarityemailsolidbadged,
  Claritynotific,
  Profileuser1,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
