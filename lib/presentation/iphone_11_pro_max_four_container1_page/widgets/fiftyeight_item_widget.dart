import 'package:yuvoria_s_application/widgets/custom_icon_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/app_export.dart';

// ignore: must_be_immutable
class FiftyeightItemWidget extends StatelessWidget {
  const FiftyeightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: DottedBorder(
          padding: EdgeInsets.only(
            left: 2.h,
            top: 2.v,
            right: 2.h,
            bottom: 2.v,
          ),
          strokeWidth: 2.h,
          radius: Radius.circular(27),
          borderType: BorderType.RRect,
          dashPattern: [
            2,
            3,
          ],
          child: CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.outline,
            child: CustomImageView(
              imagePath: ImageConstant.imgEntypoPlus,
            ),
          ),
        ),
      ),
    );
  }
}
