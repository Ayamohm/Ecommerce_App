import 'package:commerce_app/core/routing/app_routes.dart';
import 'package:commerce_app/core/styles/app_colors.dart';
import 'package:commerce_app/core/widgets/custom_text_field.dart';
import 'package:commerce_app/features/homepage/homeScreen_widgets/category_widgets.dart';
import 'package:commerce_app/features/product_details/ProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/styles/app_styles.dart';
import 'homeScreen_widgets/product_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 335.w,
            child: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Text('Discover', style: AppTextStyle.HeadLineText),
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextField(
                hintText: 'Search for clothes...',
                prefixIcon: Icon(Icons.search),
                controller: null,
                width: 280.w,
                height: 52.h,
              ),
              Container(
                height: 52.h,
                width: 52.w,
                decoration: BoxDecoration(
                  color: AppColors.btncolor,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Icon(
                  Icons.filter_list_rounded,
                  size: 30.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                CategoryWidgets(catname: "All"),
                CategoryWidgets(catname: "Shirts"),
                CategoryWidgets(catname: "Pants"),
                CategoryWidgets(catname: "Shoes"),
                CategoryWidgets(catname: "Accessories"),
                CategoryWidgets(catname: "Shirts"),
                CategoryWidgets(catname: "Pants"),
                CategoryWidgets(catname: "Shoes"),
                CategoryWidgets(catname: "Accessories"),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.sp,
                    mainAxisSpacing: 5.sp,
                    childAspectRatio: 1 / 1.33.h
                ),
              children: [
                ProductWidgets(
                    productname: 'Shose',
                    price: '\$120',
                    ontap:() {GoRouter.of(context).pushNamed(AppRoutes.productScreen);},
                ),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),
                ProductWidgets( productname: 'Shose',price: '\$120', ontap: () {  },),



              ],
            ),
          )
        ],
      ),
    );
  }
}
