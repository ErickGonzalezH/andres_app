import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//FORM
Widget textform({
  required BuildContext context, 
  required Size size, 
  required Function(String)? onchange,
  String? Function(String?)? validator, 
  required String hintText,
  TextInputType? textInputType,
  bool? obscureText,
  bool? readOnly,
  IconData? icon,
  int? maxLenght,
  int? maxLines,
  int? minLines,
  String? initialvalue,
  Widget? iconButton,
  TextEditingController? controller,
  List<TextInputFormatter>? inputFormatters,
  void Function(String)? onFieldSubmitted
}) {
  return GestureDetector(
    onTap: () => FocusScope.of(context).unfocus(),
    child: TextFormField(
      controller: controller,
      maxLength: maxLenght,
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      initialValue: initialvalue,
      onChanged: onchange,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly ?? false,
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,

      style: TextStyle(
        fontSize: size.shortestSide / 20,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),

      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF2A2A2E),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white54),
        suffixIcon: iconButton,
        prefixIcon: icon != null ? Icon(icon, color: Colors.white54) : null,
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
