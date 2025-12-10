import 'package:chatapp2/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //themeالوضع النهاري
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      //تحديد مخطط الاوان
      colorScheme: ColorScheme.light(
        primary: AppColors.lightPrimary,
        background: AppColors.lightBackground,
        surface: AppColors.lightSurface,
        onPrimary: Colors.white,
        onBackground: AppColors.lightText,
      ),
      //AppBar Color
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: Colors.white,
        elevation: 2,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      //Icon Color
      iconTheme: const IconThemeData(color: AppColors.lightText, size: 20),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF25D366),
        foregroundColor: Colors.white,
      ),
      //texttheme
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.lightText,
        ),
        bodyMedium: TextStyle(fontSize: 14, color: AppColors.lightText),
        bodySmall: TextStyle(fontSize: 12, color: Colors.grey),
      ),

      //  ElevatedButton setting
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 240, 243, 242),
          foregroundColor: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: const Color(0xFF25D366), width: 1),
          ),
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      //TextFormField
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        hintStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
        labelStyle: TextStyle(color: Colors.grey, fontSize: 13),
        prefixIconColor: Colors.grey,
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      ),
      //Popumenubutton
      popupMenuTheme: const PopupMenuThemeData(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        elevation: 4.0,
        textStyle: TextStyle(color: Colors.black87, fontSize: 16),
        iconColor: Colors.black54,
        position: PopupMenuPosition.under,
        menuPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }

  //الوضع الليلي
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: AppColors.darkPrimary,
        background: AppColors.darkBackground,
        surface: AppColors.darkSurface,
        onPrimary: Colors.white,
        onBackground: AppColors.darkText,
        onSurface: AppColors.darkText,
        secondary: AppColors.darkPrimary,
      ),
      //appbar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkSurface,
        foregroundColor: AppColors.darkText,
        elevation: 1,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.darkText,
        ),
      ),
      //iconcolor
      iconTheme: const IconThemeData(color: AppColors.darkText),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF25D366),
        foregroundColor: Colors.black,
      ),
      //texttheme
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.darkText,
        ),
        bodyMedium: TextStyle(fontSize: 14, color: AppColors.darkText),
        bodySmall: TextStyle(fontSize: 12, color: Colors.grey),
      ), //ElevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2C2C2C),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Color(0xFF25D366), width: 1),
          ),
          elevation: 2,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      //TextFormFieldTheme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[700]!),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[700]!),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
        prefixIconColor: Colors.grey[400],
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        labelStyle: TextStyle(
          color: const Color.fromARGB(255, 121, 120, 120),
          fontSize: 13,
        ),
      ),
      //popuminubutton
      popupMenuTheme: const PopupMenuThemeData(
        color: Color(0xFF2C2C2C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        elevation: 4.0,
        textStyle: TextStyle(color: Colors.white, fontSize: 16),
        iconColor: Colors.white70,
        position: PopupMenuPosition.under,
        menuPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }
}
