import 'package:commerce_app/core/styles/app_theme.dart';
import 'package:commerce_app/core/utils/service_locators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/networking/dio_helper.dart';
import 'core/routing/routing_generation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: AppTheme.lightning,
          routerConfig: RouterGenerationConfig.goRouter,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
