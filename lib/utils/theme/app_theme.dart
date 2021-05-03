import 'package:flutter/material.dart';
import 'package:flutterence/utils/theme/app_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterence/utils/theme/style.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = AppColors.indigo200;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = AppColors.purple.withOpacity(0.12);

  static ThemeData lightThemeData = themeData(lightColorScheme,
      _lightFocusColor, _lightAppBarTheme, _lightFabThemeData);

  static ThemeData darkThemeData = themeData(
    darkColorScheme,
    _darkFocusColor,
    _darkAppBarTheme,
    _darkFabThemeData,
  );

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor,
      AppBarTheme appBarTheme, FloatingActionButtonThemeData fabTheme) {
    final hintTextStyle = Styles.customTextStyle().copyWith(
      color: Styles.greyColor,
    );

    return ThemeData(
        fontFamily: 'Montserrat',
        backgroundColor: colorScheme.background,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: colorScheme.primary,
          selectionColor: colorScheme.primary,
          selectionHandleColor: colorScheme.primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: fontXXXS, vertical: fontS),
          hintStyle: hintTextStyle,
        ),
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        textTheme: _textTheme,
        iconTheme: const IconThemeData(color: AppColors.purple),
        canvasColor: colorScheme.background,
        scaffoldBackgroundColor: colorScheme.background,
        highlightColor: Colors.transparent,
        accentColor: colorScheme.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        focusColor: AppColors.primaryColor,
        appBarTheme: appBarTheme,
        splashColor: colorScheme.primary,
        hintColor: Styles.greyColor,
        floatingActionButtonTheme: fabTheme,
        buttonColor: AppColors.primaryText,
        buttonTheme: buttonTheme);
  }

  static ButtonThemeData buttonTheme = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    buttonColor: AppColors.primaryText,
    splashColor: Colors.white,
    padding: const EdgeInsets.all(14),
  );
  static ColorScheme lightColorScheme = ColorScheme(
    primary: AppColors.primaryText,
    primaryVariant: const Color(0xFF666666).withOpacity(.7),
    secondary: const Color(0xFF716969),
    secondaryVariant: AppColors.black,
    background: Colors.white,
    surface: const Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: const Color(0xFF322942),
    onSurface: const Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: AppColors.purple,
    primaryVariant: AppColors.violet,
    secondary: AppColors.indigo200,
    secondaryVariant: Colors.red,
    background: AppColors.black,
    surface: AppColors.violet,
    onBackground: Colors.white,
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: AppColors.violet,
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const _bold = FontWeight.w700;
  static const _semiBold = FontWeight.w600;
  static const _medium = FontWeight.w500;
  static const _regular = FontWeight.w400;

  static final AppBarTheme _darkAppBarTheme = AppBarTheme(
    color: AppColors.black,
    elevation: 0,
    textTheme: _textTheme,
    centerTitle: true,
    actionsIconTheme: _darkActionIconTheme,
  );
  static final AppBarTheme _lightAppBarTheme = AppBarTheme(
      color: AppColors.flutterblue,
      elevation: 0,
      textTheme: _textTheme,
      centerTitle: false,
      iconTheme: _lightActionIconTheme,
      actionsIconTheme: _lightActionIconTheme,
      brightness: Brightness.light);

  static const IconThemeData _darkActionIconTheme = IconThemeData(
    color: AppColors.indigo200,
  );
  static const IconThemeData _lightActionIconTheme = IconThemeData(
    color: AppColors.black,
  );

  static const FloatingActionButtonThemeData _darkFabThemeData =
      FloatingActionButtonThemeData(
    backgroundColor: AppColors.purple,
  );
  static const FloatingActionButtonThemeData _lightFabThemeData =
      FloatingActionButtonThemeData(
    backgroundColor: AppColors.white,
  );

  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.ubuntu(
      fontSize: 96,
      color: AppColors.indigo200,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline2: GoogleFonts.ubuntu(
      fontSize: 60,
      color: AppColors.indigo200,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline3: GoogleFonts.ubuntu(
      fontSize: 48,
      color: AppColors.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline4: GoogleFonts.ubuntu(
      fontSize: 34,
      color: AppColors.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline5: GoogleFonts.ubuntu(
      fontSize: 24,
      color: AppColors.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    // AppBar title
    headline6: GoogleFonts.ubuntu(
      fontSize: 18,
      color: AppColors.white,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: GoogleFonts.ubuntu(
      fontSize: 18,
      color: AppColors.black,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: GoogleFonts.ubuntu(
      fontSize: 14,
      color: AppColors.indigo200,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: GoogleFonts.ubuntu(
      fontSize: 17,
      color: Colors.black,
      fontWeight: _medium,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: GoogleFonts.ubuntu(
      fontSize: 14,
      color: Colors.black,
      fontWeight: _medium,
      fontStyle: FontStyle.normal,
    ),
    button: GoogleFonts.ubuntu(
      fontSize: 18,
      color: AppColors.white,
      fontStyle: FontStyle.normal,
      fontWeight: _medium,
    ),
    caption: GoogleFonts.ubuntu(
      fontSize: 12,
      color: AppColors.black,
      fontWeight: _regular,
      fontStyle: FontStyle.normal,
    ),
  );
}
