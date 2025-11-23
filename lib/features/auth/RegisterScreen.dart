import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/app_routes.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/app_styles.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/primary_button_widgets.dart';
import '../../core/widgets/spacing_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPassword = true;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    emailcontroller.addListener(() => setState(() {}));
    passwordcontroller.addListener(() => setState((){}));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create an account',style: AppTextStyle.HeadLineText),
                  HeightSpace(3.h,),
                  Text('Let’s create your account.',style: AppTextStyle.thirdText,),
                  HeightSpace(30.h),
                  Text('Full Name',style: AppTextStyle.secondaryText),
                  HeightSpace(5.h,),
                  CustomTextField(
                    hintText: "Enter your full name",
                    controller: emailcontroller,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Name is required";
                      }
                      return null;
                    },
                    isPassword: false,
                  ),
                  HeightSpace(30.h),
                  Text('User Name',style: AppTextStyle.secondaryText),
                  HeightSpace(5.h,),
                  CustomTextField(
                    hintText: "Enter your email address",
                    controller: emailcontroller,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Email is required";
                      }
                      return null;
                    },
                    isPassword: false,
                  ),
                  HeightSpace(30.h,),
                  Text('Password',style: AppTextStyle.secondaryText),
                  HeightSpace(5.h,),
                  CustomTextField(
                    controller: passwordcontroller,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password is required";
                      }
                      if(value.length < 6){
                        return "Password must be at least 6 characters";
                      }
                      if(!value.contains(RegExp(r'[A-Z]'))){
                        return "Password must contain at least one uppercase letter";
                      }

                      return null;
                    },
                    hintText: "Enter your password",
                    isPassword: isPassword,
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon(
                        isPassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                        color: AppColors.Primary_400,
                      ),
                    ),
                  ),
                  HeightSpace(30.h,),
                  Text('Confirm Password',style: AppTextStyle.secondaryText),
                  HeightSpace(5.h,),
                  CustomTextField(
                    controller: passwordcontroller,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password is required";
                      }
                      if(value.length < 6){
                        return "Password must be at least 6 characters";
                      }
                      if(!value.contains(RegExp(r'[A-Z]'))){
                        return "Password must contain at least one uppercase letter";
                      }

                      return null;
                    },
                    hintText: "Enter your password",
                    isPassword: isPassword,
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon(
                        isPassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                        color: AppColors.Primary_400,
                      ),
                    ),
                  ),
                  HeightSpace(16.h,),
                  PrimaryButtonWidgets(
                    buttonText: "Create Account",
                    onPressed: (){
                      if(formkey.currentState!.validate()){
                        GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
