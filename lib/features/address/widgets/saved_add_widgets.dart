import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/app_styles.dart';

class SavedAddWidgets extends StatelessWidget {
  final String? address_head_text;
  final String? address_text;
  final bool? Default;
  const SavedAddWidgets({super.key, this.address_head_text, this.address_text, this.Default});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 10.h),
      width: 351.w,
      height: 76,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE6E6E6)),
      ),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, color: const Color(0xFF999999), size: 30.sp),
          SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      address_head_text ?? '',
                      style: AppTextStyle.HeadLineText.copyWith(fontSize: 14.sp),
                    ),
                    SizedBox(width: 10.w),
                    if (Default == true)
                      Container(
                        width: 52,
                        height: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE6E6E6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Default',
                            style: AppTextStyle.secondaryText.copyWith(fontSize: 10.sp),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  address_text ?? '',
                  style: AppTextStyle.thirdText.copyWith(fontSize: 14.sp),
                ),
              ],
          ),
        ],
      ),
    );
  }
}
