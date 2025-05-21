import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

void showCustomToast({
  required BuildContext context,
  required String message,
  IconData icon = Icons.info_outline,
  Color backgroundColor = const Color(0xFF323232),
  Color textColor = Colors.white,
  Duration duration = const Duration(seconds: 3),
}) {
  Flushbar(
    margin: const EdgeInsets.all(16),
    borderRadius: BorderRadius.circular(12),
    backgroundColor: backgroundColor,
    icon: Icon(icon, color: Colors.white),
    duration: duration,
    flushbarPosition: FlushbarPosition.BOTTOM,
    messageText: Text(
      message,
      style: TextStyle(color: textColor, fontSize: 16),
    ),
  ).show(context);
}