import 'dart:developer' as developer;
import 'dart:developer';

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:commerce_app/core/routing/app_routes.dart';
import 'package:commerce_app/core/styles/app_colors.dart';
import 'package:commerce_app/core/utils/snackbar.dart';
import 'package:commerce_app/core/widgets/custom_text_field.dart';
import 'package:commerce_app/core/widgets/primary_button_widgets.dart';
import 'package:commerce_app/features/auth/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/styles/app_styles.dart';
import '../../core/widgets/spacing_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = true;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailcontroller.addListener(() => setState(() {}));
    passwordcontroller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Login to your account', style: AppTextStyle.HeadLineText),
              HeightSpace(3.h),
              Text(
                'It’s great to see you again.',
                style: AppTextStyle.thirdText,
              ),
              HeightSpace(30.h),
              Text('User Name', style: AppTextStyle.secondaryText),
              HeightSpace(5.h),
              CustomTextField(
                hintText: "Enter your email address",
                controller: emailcontroller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
                isPassword: false,
              ),
              HeightSpace(30.h),
              Text('Password', style: AppTextStyle.secondaryText),
              HeightSpace(5.h),
              CustomTextField(
                controller: passwordcontroller,
                validator: (value) {
                  if (value!.isEmpty) return "Password is required";
                  if (value.length < 6)
                    return "Password must be at least 6 characters";
                  if (!value.contains(RegExp(r'[A-Z]'))) {
                    return "Password must contain at least one uppercase letter";
                  }
                  return null;
                },
                hintText: "Enter your password",
                isPassword: isPassword,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  icon: Icon(
                    isPassword
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye,
                    color: AppColors.Primary_400,
                  ),
                ),
              ),
              HeightSpace(30.h),
              PrimaryButtonWidgets(
                buttonText: "Sign In",
                onPressed: () async {
                  if (formkey.currentState!.validate()) {
                    final res = await Authrepo().login(
                      username: emailcontroller.text,
                      password: passwordcontroller.text,
                    );

                    res.fold(
                      (error) {
                        showAnimatedSnackBar(
                          context,
                          message: error,
                          type: AnimatedSnackBarType.error,
                        );
                      },
                      (model) async {
                        showAnimatedSnackBar(
                          context,
                          message: "Login Success",
                          type: AnimatedSnackBarType.success,
                        );
                        await Future.delayed(const Duration(seconds: 2));
                        GoRouter.of(context).goNamed(AppRoutes.mainScreen);
                      },
                    );
                  }
                },
              ),
              HeightSpace(16.h),
              Center(
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoutes.registerScreen);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: AppTextStyle.thirdText.copyWith(
                        color: AppColors.Primary_400,
                      ),
                      children: [
                        TextSpan(
                          text: "Join",
                          style: AppTextStyle.thirdText.copyWith(
                            color: AppColors.Primary_900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
