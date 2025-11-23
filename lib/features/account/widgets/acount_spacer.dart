import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcountSpacer extends StatelessWidget {
  final Color? color;
  final double? thickness;
  final double? width;

  const AcountSpacer({super.key, this.color, this.thickness,  this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??350.w,
      child: Divider(
        color: color??Color(0xFFE6E6E6),
        thickness: thickness??1,
      ),
    );
  }
}
