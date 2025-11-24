import 'package:commerce_app/core/routing/app_routes.dart';
import 'package:commerce_app/core/widgets/primary_button_widgets.dart';
import 'package:commerce_app/features/account/widgets/acount_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/styles/app_styles.dart';
import '../../core/utils/service_locators.dart';
import '../../core/utils/storage_helper.dart';
import 'widgets/account_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: WidgetStateColor.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Account',
            style: AppTextStyle.HeadLineText,
          ),
        ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AcountSpacer(),
            AccountWidget(icon: Icons.gif_box_outlined, text: 'My Orders',onPressed: (){
              GoRouter.of(context).pushNamed(AppRoutes.CartScreen);
            },),
            AcountSpacer(
              color: Color(0xFFAAAAAA),
              thickness: 8,
              width: 390.w,
            ),
            AccountWidget(icon: Icons.person_2_outlined, text: 'My Details',onPressed: (){},),
            AcountSpacer(),
            AccountWidget(icon: Icons.home_outlined, text: 'Address Book',onPressed: (){
              GoRouter.of(context).pushNamed(AppRoutes.addressScreen);
            },),
            AcountSpacer(),
            AccountWidget(icon: Icons.question_mark_outlined, text: 'FAQs',onPressed: (){},),
            AcountSpacer(),
            AccountWidget(icon: Icons.headphones_outlined, text: 'Help Center',onPressed: (){},),
            AcountSpacer(
              color: Color(0xFFE6E6E6),
              thickness: 8,
              width: 390.w,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 55.0),
              child: InkWell(
                child: Row(
                  children: [
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(3.1416),
                      child: Icon(Icons.logout_rounded, color: Colors.redAccent, size: 30),
                    ),
                    SizedBox(width: 20.w,),
                    Text('Logout', style: AppTextStyle.secondaryText.copyWith(color: Colors.redAccent, fontSize: 17.sp),)
                  ],
                ),
                onTap: () async {
                    final confirmed = await showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          insetPadding: EdgeInsets.symmetric(horizontal: 30.w),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: EdgeInsets.zero,
                          content: Container(
                            width: 340.w,
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Icon
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.red,
                                  size: 60,
                                ),
                                SizedBox(height: 10),

                                // Title
                                Text(
                                  "Logout?",
                                  style: AppTextStyle.secondaryText.copyWith(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                                SizedBox(height: 4),

                                // Subtitle
                                Text(
                                  "Are you sure you want to logout?",
                                  style: AppTextStyle.thirdText.copyWith(
                                    color: Colors.grey,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                                SizedBox(height: 20),

                                // YES BUTTON
                                PrimaryButtonWidgets(
                                  onPressed: () => Navigator.of(ctx).pop(true),
                                  buttonText: "Yes, Logout",
                                  buttonColor: Colors.red,
                                  width: double.infinity,
                                ),

                                SizedBox(height: 12),

                                // NO BUTTON
                                PrimaryButtonWidgets(
                                  onPressed: () => Navigator.of(ctx).pop(false),
                                  buttonText: "No, Cancel",
                                  buttonColor: Colors.white,
                                  TextColor: Colors.black,
                                  border: BorderSide(color: Color(0xFFCCCCCC)),
                                  width: double.infinity,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    if (confirmed == true) {
                      await sl<StorageHelper>().deleteToken();
                      GoRouter.of(context).goNamed(AppRoutes.loginScreen);
                    }
                  },
              ),
            ),


          ]
        ),
      )
    );
  }
}
