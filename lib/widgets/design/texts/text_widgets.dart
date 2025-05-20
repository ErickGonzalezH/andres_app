import 'package:flutter/material.dart';

//TEXTO DINAMICO
Widget customText({
  required String text,
  FontWeight? nigga,
  double? size,
  Color? color,
  TextAlign? textAlign,
  TextOverflow? textOverflow,
  int? maxLines,
  bool? softWrap,
  TextDecoration? textDecoration,
  FontStyle? fontStyle
}) {
  return Text(
    text,
    textAlign: textAlign,
    overflow: textOverflow,
    maxLines: maxLines,
    softWrap: softWrap ?? true,
    style: TextStyle(
      fontWeight: nigga,
      fontSize: size,
      color: color,
      decoration: textDecoration,
      fontStyle: fontStyle,
    )
  );
}

//TEXTO CON DOBLE DISENO
Widget richText({
  required String text1,
  required String text2,
  Color? textColor1,
  Color? textColor2,
  double? textSize1,
  double? textSize2,
  FontWeight? fontWeight1,
  FontWeight? fontWeight2,
  TextAlign? textAlign,
}) {
  return RichText(
    textAlign: textAlign ?? TextAlign.justify,
    text: TextSpan(
      children: [
        TextSpan(
          text: text1,
          style: TextStyle(
            color: textColor1 ?? Colors.black,
            fontSize: textSize1,
            fontWeight: fontWeight1,
          ),
        ),
        TextSpan(
          text: text2,
          style: TextStyle(
            color: textColor2 ?? Colors.black,
            fontSize: textSize2,
            fontWeight: fontWeight2,
          ),
        ),
      ],
    ),
  );
}