import 'package:commerce_app/core/routing/app_routes.dart';
import 'package:commerce_app/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/styles/app_styles.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WidgetStateColor.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('Details',style: AppTextStyle.HeadLineText),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 341.w,
                height: 368.5.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.network(
                    'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
              Text('Fit Polo T Shirt',style: AppTextStyle.secondaryText.copyWith(fontSize: 20.sp),),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Icon(Icons.star,color: Color(0xffFFA928),size: 20.sp,),
                  SizedBox(width: 5.w,),
                  Text('4.0/5',style: AppTextStyle.secondaryText.copyWith(fontSize: 16.sp),),
                  SizedBox(width: 5.w,),
                  Text('(45 reviews)',style: AppTextStyle.thirdText.copyWith(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                  ]
              ),
              SizedBox(height: 10.h,),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                style:AppTextStyle.fieldText),
              Spacer(),
              Divider(),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price',style: AppTextStyle.thirdText.copyWith(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                      Text('\$ 1,190',style: AppTextStyle.HeadLineText.copyWith(fontSize: 20.sp),),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: (){
                        GoRouter.of(context).pushNamed(AppRoutes.CartScreen);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(240.w, 54.h),
                        backgroundColor: AppColors.btncolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child:Row(
                        children: [
                          Icon(Icons.card_travel_outlined,color: Colors.white,size: 20.sp,),
                          SizedBox(width: 5.w,),
                          Text('Add to Cart',style: AppTextStyle.secondaryText.copyWith(color: Colors.white),)

                        ]
                      )
                  )
                ]
              )
            ],

          ),

      ),

    );
  }
}
