import 'package:commerce_app/core/styles/app_colors.dart';
import 'package:commerce_app/core/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidgets extends StatefulWidget {
  final String catname;

  CategoryWidgets({
    super.key,
    required this.catname,
  });

  @override
  State<CategoryWidgets> createState() => _CategoryWidgetsState();
}

class _CategoryWidgetsState extends State<CategoryWidgets> {
  Color? color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 8.w),
      child: InkWell(
        onTap: (){
          setState(() {
            color = AppColors.btncolor;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.grey, width: .5),
          ),
          child: Text(
            widget.catname,
            style: AppTextStyle.secondaryText.copyWith(
              fontWeight: FontWeight.bold,
              color: color == AppColors.btncolor ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
