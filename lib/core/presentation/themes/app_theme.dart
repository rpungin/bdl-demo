import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorPanthersRed = Color(0xFFCF102D);
  static const Color colorPanthersBlue = Color(0xFF091F3F);
  static const Color colorAccent = Color(0xFFBD965C);
  static const Color colorPrimary = colorPanthersBlue;
  static const Color colorBackground = Color.fromARGB(255, 225, 225, 225);
  static const Color colorTextLight = Color.fromARGB(255, 225, 225, 225);
  static const Color colorTextDark = Color.fromARGB(255, 40, 41, 42);
  static const Color colorTextOnBackground = colorTextDark;
  static const Color colorTextOnWidget = colorTextDark;

  static const double gridSpacing = 6;
  static const double cardElevation = 6;
  static const double cornerRadius = 10;
  static const BorderRadius borderRadiusAll =
      BorderRadius.all(Radius.circular(cornerRadius));
  static const double buttonHeight = 40;

  static Widget get gridDividerVertical => const SizedBox(width: gridSpacing);
  static Widget get gridDividerHorizontal =>
      const SizedBox(height: gridSpacing);

  static BorderRadius buttonsBorderRadius(BuildContext context) =>
      BorderRadius.circular(Theme.of(context).buttonTheme.height / 2);

  late final ThemeData themeData;
  AppTheme() {
    themeData = ThemeData(
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //primarySwatch: _createMaterialColor(colorTextLight),
        primaryColor: colorTextLight,
        scaffoldBackgroundColor: colorBackground,
        canvasColor: colorBackground,
        //unselectedWidgetColor: colorTextDark,
        //colorScheme: const ColorScheme.light(),
        iconTheme: const IconThemeData(color: colorTextDark),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: colorPanthersRed,
          foregroundColor: colorTextLight,
          iconTheme: IconThemeData(color: colorTextLight),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: colorPanthersBlue,
            selectedItemColor: colorTextLight,
            unselectedItemColor: colorAccent),
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: colorTextLight),
              borderRadius: BorderRadius.circular(buttonHeight / 2)),
          height: buttonHeight,
          colorScheme: const ColorScheme.dark(),
          buttonColor: colorAccent,
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(colorAccent),
          foregroundColor: MaterialStatePropertyAll<Color>(colorTextLight),
        )),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.only(left: 6, right: 6),
          //prefixStyle: AppThemetextStyleSmallOnWidget(),
          focusColor: colorTextLight,
          //labelStyle: AppThemetextStyleSmallOnWidget(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colorTextLight),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colorTextLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colorAccent),
          ),
        ),
        dialogTheme: const DialogTheme(
            backgroundColor: colorBackground,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: AppTheme.colorTextDark),
                borderRadius: borderRadiusAll)));
  }
  static Decoration get bottomBarDecoration => const BoxDecoration(
      gradient: LinearGradient(
          colors: [AppTheme.colorPanthersBlue, AppTheme.colorPanthersBlue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter));

  // MaterialColor _createMaterialColor(Color color) {
  //   final swatches = {
  //     50: color.withOpacity(.1),
  //     100: color.withOpacity(.2),
  //     200: color.withOpacity(.3),
  //     300: color.withOpacity(.4),
  //     400: color.withOpacity(.5),
  //     500: color.withOpacity(.6),
  //     600: color.withOpacity(.7),
  //     700: color.withOpacity(.8),
  //     800: color.withOpacity(.9),
  //     900: color.withOpacity(1),
  //   };
  //   return MaterialColor(color.value, swatches);
  // }
}
