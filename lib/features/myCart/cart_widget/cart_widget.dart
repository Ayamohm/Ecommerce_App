import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/app_styles.dart';

class CartWidget extends StatefulWidget {
  CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  int number = 1;
  @override

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10.w),
        width: 342.w,
        height: 107.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10.r),
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// 1) صورة المنتج
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.network(
                'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
                width: 83.w,
                height: 83.h,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 10.w),

            /// 2) التفاصيل (العنوان + سايز + delete)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///  Row: عنوان + delete على اليمين
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Regular Fit Slogan',
                          style: AppTextStyle.HeadLineText.copyWith(fontSize: 14.sp),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(Icons.delete_outline_outlined,
                        color: Colors.redAccent,
                        size: 22.sp,
                      ),
                    ],
                  ),

                  SizedBox(height: 4.h),

                  /// Size
                  Text(
                    'Size L',
                    style: AppTextStyle.thirdText.copyWith(
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),

                  Spacer(),

                  /// 3) السعر + quantity row
                  Row(
                    children: [
                      /// السعر
                      Text(
                        '\$ 1,190',
                        style: AppTextStyle.HeadLineText.copyWith(fontSize: 14.sp),
                      ),

                      Spacer(),

                      ///  quantity box
                      Row(
                        children: [
                          // minus
                          InkWell(
                            onTap: () {
                              if (number > 1) {
                                setState(() {
                                  number--;
                                });
                              }
                            },
                            child: Container(
                              width: 25.w,
                              height: 25.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Icon(Icons.remove, size: 18.sp),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            number.toString(),
                            style: AppTextStyle.HeadLineText.copyWith(fontSize: 14.sp),
                          ),
                          SizedBox(width: 6.w),
                          // plus
                          InkWell(
                            onTap: () {
                              setState(() {
                                number++;
                              });
                            },
                            child: Container(
                              width: 25.w,
                              height: 25.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Icon(Icons.add, size: 18.sp),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
