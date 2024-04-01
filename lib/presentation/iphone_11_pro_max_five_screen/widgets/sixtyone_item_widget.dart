import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

// ignore: must_be_immutable
class SixtyoneItemWidget extends StatelessWidget {
  const SixtyoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse12,
          height: 56.adaptSize,
          width: 56.adaptSize,
          radius: BorderRadius.circular(
            28.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mike Goldberg",
                style: theme.textTheme.titleMedium,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "It’s a sunny day.",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgWiTime4,
          height: 17.adaptSize,
          width: 17.adaptSize,
          margin: EdgeInsets.only(
            top: 19.v,
            bottom: 20.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 20.v,
            bottom: 18.v,
          ),
          child: Text(
            "4 min ago",
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
