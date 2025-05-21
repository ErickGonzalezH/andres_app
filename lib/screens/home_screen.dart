import 'package:andres_app/colors/export_colors.dart';
import 'package:andres_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kBackgroundColor,

      appBar: AppBar(title: customText(text: 'Inicio', color: Colors.white), backgroundColor: kPrimaryColor),

      body: Center(
         child: customText(text: 'HomeScreen', color: Colors.white),
      ),
    );
  }
}