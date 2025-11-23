import 'package:commerce_app/core/styles/app_colors.dart';
import 'package:commerce_app/core/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  bool? isPassword;
  double? width;
  double? height;
  TextEditingController? controller;
  String? Function(String?)? validator;
  CustomTextField({
    super.key,
    this.suffixIcon,
    this.hintText,
    this.isPassword,
    required this.controller,
    this.validator,
    this.prefixIcon,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??341.w,
      height: height??52.h,
      child: TextFormField(
        controller: controller,
        validator: validator,
        autofocus: false,
        obscureText: isPassword ?? false,
        cursorColor: AppColors.Primary_400,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintStyle: AppTextStyle.thirdText.copyWith(
            color: AppColors.Primary_400,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Colors.grey, width: 1.w),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Colors.redAccent, width: 1.w),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Colors.redAccent, width: 1.w),
          ),
        ),
      ),
    );
  }
}
