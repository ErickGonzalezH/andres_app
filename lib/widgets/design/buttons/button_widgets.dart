import 'package:flutter/material.dart';

import 'package:andres_app/widgets/export_widgets.dart';

//BOTON SINCRONO
Widget materialSyncButton({
  required void Function()? onPressed,
  required String text,
  required double minWidth,
  required Color color,
  double? borderRadius,
  Color? textColor,
  Color? borderColor,
  double? borderWidth,
  FontWeight? nigga,
  double? height,
  double? textsize,
}) {
  return MaterialButton(
    onPressed: onPressed,
    minWidth: minWidth,
    color: color,
    height: height,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 10),
      side: BorderSide(color: borderColor ?? color, width: borderWidth ?? 0),
    ),
    child: customText(
      text: text,
      color: textColor,
      nigga: nigga,
      size: textsize
    ),
  );
}

//BOTÓN ASÍNCRONO
Widget materialAsyncButton({
  required Future<void> Function()? onPressed,
  required String text,
  required double minWidth,
  required Color color,
  double? borderRadius,
  Color? textColor,
  Color? borderColor,
  double? borderWidth,
  FontWeight? nigga,
  double? height,
  double? textsize,
}) {
  return MaterialButton(
    onPressed: onPressed,
    minWidth: minWidth,
    height: height,
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 15),
      side: BorderSide(color: borderColor ?? color, width: borderWidth ?? 0),
    ),
    child: customText(
      text: text,
      color: textColor,
      nigga: nigga,
      size: textsize
    ),
  );
}

//BOTÓN ASÍNCRONO
Widget materialAsyncButtonWidget({
  required Future<void> Function()? onPressed,
  required double minWidth,
  required Color color,
  required Widget child,
  double? borderRadius,
  Color? textColor,
  Color? borderColor,
  double? borderWidth,
  FontWeight? nigga,
  double? height,
  double? textsize,
}) {
  return MaterialButton(
    onPressed: onPressed,
    minWidth: minWidth,
    height: height,
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 15),
      side: BorderSide(color: borderColor ?? color, width: borderWidth ?? 0),
    ),
    child: child
  );
}