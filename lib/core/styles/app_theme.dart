import 'package:commerce_app/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'app_fonts.dart';
import 'app_styles.dart';

class AppTheme{
  static final ThemeData lightning = new ThemeData(
    primaryColor: AppColors.Primary_900,
    scaffoldBackgroundColor: AppColors.Primary_Pure_White,
    fontFamily: AppFonts.mainfontName,
    textTheme: TextTheme(
      titleLarge: AppTextStyle.HeadLineText,
      bodyMedium: AppTextStyle.secondaryText,
    ),

  );
}