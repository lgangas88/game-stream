import 'package:flutter/material.dart';

class CustomColors {
  static const primaryMarine = Color(0xff121F3D);
  static const primaryBlueGray = Color(0xff24385B);
  static const secondaryCian = Color(0xff49FFC8);
  static const secondaryDarkCian = Color(0xff3FCAA0);
  static const secondaryAmarello = Color(0xffFCD23D);
}

// final MaterialColor primaryColor = MaterialColor(
//   0xff121F3D,
//   {
//     50: CustomColors.primaryMarine,
//     100: CustomColors.primaryMarine,
//     200: CustomColors.primaryMarine,
//     300: CustomColors.primaryMarine,
//     400: CustomColors.primaryMarine,
//     500: CustomColors.primaryMarine,
//     600: CustomColors.primaryMarine,
//     700: CustomColors.primaryMarine,
//     800: CustomColors.primaryMarine,
//     900: CustomColors.primaryMarine,
//   },
// );

ThemeData lighTheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: CustomColors.primaryMarine,
      appBarTheme: AppBarTheme(
        backgroundColor: CustomColors.primaryBlueGray,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      // primarySwatch: primaryColor,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: CustomColors.secondaryDarkCian,
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
          subtitle1: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // type: BottomNavigationBarType.shifting,
        backgroundColor: CustomColors.primaryBlueGray.withOpacity(.5),
      ),
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: EdgeInsets.zero,
        hintStyle: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: Colors.white.withOpacity(.5)),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.secondaryDarkCian,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            primary: Colors.white,
            side: const BorderSide(color: CustomColors.secondaryCian),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: Theme.of(context).textTheme.button!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: CustomColors.primaryMarine),
      ),
    );
