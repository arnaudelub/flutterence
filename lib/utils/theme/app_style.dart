import 'package:flutterence/utils/theme/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';

/// value 8
const double fontXXXS = 8.0;

///value 10
const double fontXXS = 10;

/// value 12
const double fontXS = 12;

/// value 14
const double fontS = 14;

/// value 16
const double fontM = 16;

/// value 18
const double fontL = 18;

/// value 20
const double fontXL = 20;

/// value 21
const double fontXXL = 21;

/// value 22
const double fontXXXL = 22;

/// Radius for rounderBorderButton
/// value = 8
const double buttonBorderRadius = 8;

// Spacer
/// Value: 8.0
const double smallSpacer = 8.0;

/// Value: 12.0
const double mediumSpace = 12.0;

/// Value: 16.0
const double largeSpacer = 16.0;

/// Value: 25.0
const double socialIconSize = 25.0;

/// Styling the app
class Styles {
  static const Color blackColor = Color(0xFF333333);
  static const Color greyColor = Color(0xFF999999);
  static const Color greyColorBab = Color(0xFF898989);
  static const Color redColor = Color(0xFFE08080);
  static const Color orange = Color(0xFFFFC38B);
  static TextStyle customTextStyle({
    Color color = AppColors.primaryText,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = fontS,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.ubuntu(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle bodyTextStyle({
    Color color = blackColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = fontM,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.ubuntu(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Color iconColor() => AppColors.blackShade6.withOpacity(0.7);

  static Color dividerColor() => AppColors.blackShade7;
}
