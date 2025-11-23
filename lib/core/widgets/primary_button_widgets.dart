import 'package:commerce_app/core/styles/app_colors.dart';
import 'package:commerce_app/core/styles/app_styles.dart';
import 'package:commerce_app/core/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidgets extends StatelessWidget {
  final String? buttonText;
  final Widget? icon;
  final double? width;
  final double? height;
  final Color? TextColor;
  final Color? buttonColor;
  final double? fontsize;
  final Widget? trailingIcon ;
  final BorderSide? border;
  final void Function()? onPressed;
  PrimaryButtonWidgets({
    super.key,
    this.buttonText,
    this.icon,
    this.width,
    this.height,
    this.buttonColor,
    this.fontsize,
    this.onPressed,
    this.TextColor,
    this.trailingIcon,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: buttonColor ?? AppColors.btncolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: border?? BorderSide.none,
        ),
        minimumSize:  Size(width??325.w, height??50.h),
      ),
      onPressed:onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon !=null)...[
            icon!,
            const SizedBox(width: 8),
          ],
          Text(
            buttonText ?? "",
            style: TextStyle(
              color: TextColor?? Colors.white,
              fontSize: fontsize??14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (trailingIcon  !=null)...[
            trailingIcon!,
            const SizedBox(width: 8),
          ],
        ],
      ),
    );
  }
}
