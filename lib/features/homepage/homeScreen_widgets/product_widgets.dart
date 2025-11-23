import 'package:commerce_app/core/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductWidgets extends StatelessWidget {
  final String price;
  final String productname;
  final Function()? ontap;

  const ProductWidgets({super.key, required this.price, required this.productname, required this.ontap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap??(){},
      child: Container(
        width: 161.w,
        height: 224.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 161.w,
              height: 174.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://tse2.mm.bing.net/th/id/OIP.VoXXZWHOcYsMtnjlLJJUFgHaEh?rs=1&pid=ImgDetMain&o=7&rm=3',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              productname,
              style: AppTextStyle.secondaryText
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: AppTextStyle.thirdText.copyWith(
                fontSize: 12.sp,
              )
            ),

          ],
        ),
      ),
    );
  }
}
