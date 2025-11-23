import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle{
  static TextStyle HeadLineText = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 24.sp,
    fontWeight: FontWeight.w900,
    color: AppColors.Primary_900,
  );
  static TextStyle thirdText = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.Primary_500,
  );
  static TextStyle Primary_Pure_White_Text = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.Primary_Pure_White,
  );
  static TextStyle secondaryText = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.Primary_900,
  );

  static TextStyle fieldText = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    color: AppColors.Primary_400,
  );

  
}