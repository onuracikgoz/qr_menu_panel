import 'package:flutter/material.dart';
import 'package:qr_menu_panel/core/constants/app_color.dart';

class DarktTheme {
  static ThemeData darkTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: "kanit",
          ),
        ),
        fixedSize: MaterialStateProperty.all(const Size(200, 60)),
        alignment: Alignment.center,
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColor.primaryBlack),
        side: MaterialStateProperty.all(BorderSide.none),
        elevation: MaterialStateProperty.all(5),
      ),
    ),
    brightness: Brightness.dark,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.blueGrey[50],
      contentPadding: const EdgeInsets.only(left: 30),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueGrey[50]!),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueGrey[50]!),
        borderRadius: BorderRadius.circular(15),
      ),
      hintStyle: const TextStyle(
        color: AppColor.primaryBlack,
        fontFamily: "kanit",
      ),
    ),
    fontFamily: 'kanit',
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.primaryBlack,
        fontSize: 40,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: AppColor.primaryBlack,
        fontSize: 30,
        fontWeight: FontWeight.w300,
      ),
      bodySmall: TextStyle(
        color: AppColor.primaryBlack,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
