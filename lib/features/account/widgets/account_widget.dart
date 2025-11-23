import 'package:commerce_app/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final IconData icon;
  final String? text;
  final VoidCallback? onPressed;
  const AccountWidget({super.key, required this.icon, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Row(
          children: [
            Icon (icon, size: 30, color: AppColors.Primary_900),
            SizedBox(width: 10),
            Text(text??"", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            Spacer(),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
        onTap: onPressed,
      ),
    );
  }
}
