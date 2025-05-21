import 'package:andres_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

Widget containerCampos({
  required Size size, 
  required String text, 
  required Widget widget,
  required BuildContext context, 
  Color? textColor,
}) =>
    GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SizedBox(
        height: size.shortestSide * .27,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            customText(text: text, color: textColor),
            widget,
          ],
        ),
      ),
    );