import 'package:commerce_app/core/widgets/primary_button_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_styles.dart';

class CartDetailsWidget extends StatelessWidget {
  final double? suptotal;
  final double? vat;
  final double? shippingFee;
  final double? total;
  const CartDetailsWidget({
    super.key,
    required this.suptotal,
    required this.vat,
    required this.shippingFee,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Sub-total',
              style: AppTextStyle.thirdText.copyWith(fontSize: 12.sp),
            ),
            Spacer(),
            Text(
              '\$' + (suptotal?.toStringAsFixed(2) ?? '0.00'),
              style: AppTextStyle.secondaryText,
            ),
          ],
        ),
        SizedBox(height: 10,),

        Row(
          children: [
            Text(
              'VAT (%)',
              style: AppTextStyle.thirdText.copyWith(fontSize: 12.sp),
            ),
            Spacer(),
            Text(
            (vat?.toStringAsFixed(2)??'0.00') + '%',
              style: AppTextStyle.secondaryText,
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text(
              'Shipping fee',
              style: AppTextStyle.thirdText.copyWith(fontSize: 12.sp),
            ),
            Spacer(),
            Text(
              '\$' + (shippingFee?.toStringAsFixed(2) ?? 'free'),
              style: AppTextStyle.secondaryText,
            ),
          ],
        ),
        SizedBox(height: 20,),
        Divider(),
        Row(
          children: [
            Text(
              'Total',
              style: AppTextStyle.secondaryText,
            ),
            Spacer(),
            Text(
              '\$' + (total?.toStringAsFixed(2) ?? '0.00'),
              style: AppTextStyle.secondaryText,
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        PrimaryButtonWidgets(
          onPressed: () {},
          buttonText: 'Go To Checkout  ',
          trailingIcon: Icon(Icons.arrow_forward_ios_outlined,
              color: Colors.white, size: 20.sp),
          buttonColor: AppColors.btncolor,
          TextColor: Colors.white,
          width: double.infinity,
          height: 50.h,
        )
      ],
    );
  }
}
