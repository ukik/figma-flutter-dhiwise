import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

// ignore: must_be_immutable
class SixtyItemWidget extends StatelessWidget {
  const SixtyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 293.v,
      width: 369.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 155.v),
              padding: EdgeInsets.all(22.h),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 70.h,
                      top: 45.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jesica fariya",
                          style: CustomTextStyles.bodyLargePoppinsGray700,
                        ),
                        Text(
                          "1 hour ago",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12,
                    width: 4.h,
                    margin: EdgeInsets.only(
                      top: 55.v,
                      bottom: 14.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 246.v,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse14,
            height: 48.adaptSize,
            width: 48.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 24.h,
              bottom: 25.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClarityHeartSolid,
            height: 22.adaptSize,
            width: 22.adaptSize,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 44.h,
              bottom: 25.v,
            ),
          ),
        ],
      ),
    );
  }
}
