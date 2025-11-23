import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

showAnimatedSnackBar(
  BuildContext context, {
  required String message,
  required AnimatedSnackBarType type
}) {
  AnimatedSnackBar.material(
    message,
    type: type,
  ).show(context);
}
