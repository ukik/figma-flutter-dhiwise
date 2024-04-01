import 'package:flutter/material.dart';
import 'package:yuvoria_s_application/core/utils/size_utils.dart';
import 'package:yuvoria_s_application/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray20001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray20001,
      );
  static get bodyLargeMerriweatherBlueA100 =>
      theme.textTheme.bodyLarge!.merriweather.copyWith(
        color: appTheme.blueA100,
      );
  static get bodyLargePoppinsGray700 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargePoppinsIndigo200 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.indigo200,
        fontSize: 16.fSize,
      );
  static get bodyMediumMerriweatherBlueA400 =>
      theme.textTheme.bodyMedium!.merriweather.copyWith(
        color: appTheme.blueA400,
      );
  // Title text style
  static get titleMediumPoppinsBluegray700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray700,
      );
  static get titleMediumPoppinsIndigo200 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.indigo200,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallIndigo300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo300,
      );
}

extension on TextStyle {
  TextStyle get circe {
    return copyWith(
      fontFamily: 'Circe',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get merriweather {
    return copyWith(
      fontFamily: 'Merriweather',
    );
  }
}
