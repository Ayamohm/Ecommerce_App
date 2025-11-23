import 'dart:ffi' hide Size;

import 'package:commerce_app/features/myCart/cart_widget/cart_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/app_styles.dart';
import 'cart_widget/cart_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WidgetStateColor.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: AppTextStyle.HeadLineText,
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => CartWidget(),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 10.h),
                    itemCount: 6,
                  ),
                ),
                SizedBox(height: 10.h,),
                CartDetailsWidget(
                  shippingFee: 5,
                  suptotal:120 ,
                  total: 1085.262,
                  vat: 10,
                ),
              ],
            ),

        ),
      ),
    );
  }
}
