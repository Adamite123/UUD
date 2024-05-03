import 'package:flutter/material.dart';
import 'package:uud/core/utils/size_utils.dart';
import 'package:uud/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayLargeRowdiesGray900 =>
      theme.textTheme.displayLarge!.rowdies.copyWith(
        color: appTheme.gray900,
        fontSize: 55.fSize,
        fontWeight: FontWeight.w300,
      );
  // Label text style
  static get labelMediumGray800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeAlegreyaBluegray900 =>
      theme.textTheme.titleLarge!.alegreya.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeAlegreyaSansDeeppurple300 =>
      theme.textTheme.titleLarge!.alegreyaSans.copyWith(
        color: appTheme.deepPurple300,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get rowdies {
    return copyWith(
      fontFamily: 'Rowdies',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get righteous {
    return copyWith(
      fontFamily: 'Righteous',
    );
  }

  TextStyle get alegreya {
    return copyWith(
      fontFamily: 'Alegreya',
    );
  }

  TextStyle get alegreyaSans {
    return copyWith(
      fontFamily: 'Alegreya Sans',
    );
  }
}
