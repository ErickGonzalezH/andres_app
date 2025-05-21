import 'dart:math';
import 'package:flutter/material.dart';

import 'package:andres_app/colors/colors.dart';

class ThemeAplication {
  final Size size;
  final BuildContext context;

  ThemeAplication(this.size, this.context);

  ThemeData get lightTheme => ThemeData.light().copyWith(

    primaryColor: kPrimaryColor,

    scaffoldBackgroundColor: Colors.white,

    appBarTheme: AppBarTheme(
      backgroundColor: kappbarColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(fontSize: 22, color: Colors.black)
    ),

    iconTheme: IconThemeData(size: size.shortestSide / 20, color: Colors.black),

    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: size.shortestSide / 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: kPrimaryColor,
        fontSize: size.shortestSide / 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: calcularTamanoDiagonal(size.width * 0.05, size.height * 0.022),
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        color: Colors.black,
        fontSize: calcularTamanoDiagonal(size.width * 0.012, size.height * 0.014),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: kPrimaryColor,
        fontSize: calcularTamanoDiagonal(size.width * 0.025, size.height * 0.01),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: size.shortestSide / 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: size.shortestSide / 20,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: size.shortestSide / 20,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize:
            calcularTamanoDiagonal(size.width * 0.019, size.height * 0.018),
      ),
    ),
    
    inputDecorationTheme: InputDecorationTheme(
      fillColor: const Color(0xffe8edf0),
      filled: true,
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: kPrimaryColor),
      ),
      prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
      contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.018, horizontal: 10),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: size.shortestSide / 20,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.normal,
        color: const Color.fromRGBO(0, 0, 0, 0.612),
      ),
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 10.0,
        minimumSize: const Size(300, 45),
        textStyle: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: size.shortestSide / 20,
        ),
      ),
    ),       
    
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
      ),
    ),
  
  );

  ThemeData get darkTheme => ThemeData.dark().copyWith(

    primaryColor: kPrimaryColor,
    iconTheme: IconThemeData(size: size.shortestSide / 20, color: Colors.white),

    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: size.shortestSide / 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: kPrimaryColor,
        fontSize: size.shortestSide / 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: calcularTamanoDiagonal(size.width * 0.05, size.height * 0.022),
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        color: Colors.white,
        fontSize: calcularTamanoDiagonal(size.width * 0.012, size.height * 0.014),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: kPrimaryColor,
        fontSize: calcularTamanoDiagonal(size.width * 0.025, size.height * 0.01),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: size.shortestSide / 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: size.shortestSide / 20,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: size.shortestSide / 20,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: calcularTamanoDiagonal(size.width * 0.019, size.height * 0.018),
      ),
    ),
    
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey[800],
      filled: true,
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: kPrimaryColor),
      ),
      prefixIconColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.018, horizontal: 10),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: size.shortestSide / 20,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.normal,
        color: const Color.fromRGBO(255, 255, 255, 0.612),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 10.0,
        minimumSize: const Size(300, 45),
        textStyle: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: size.shortestSide / 20,
        ),
      ),
    ),
    
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.grey[700],
        foregroundColor: Colors.white,
      ),
    ),
  
  );

  double calcularTamanoDiagonal(double ladoA, double ladoB) {
    return sqrt(pow(ladoA, 2) + pow(ladoB, 2));
  }
}
