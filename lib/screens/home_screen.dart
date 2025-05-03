import 'dart:developer';

import 'package:andres_app/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String nombre = 'Tony';
  String apellido = 'Stark';
  String edad = '30';

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        title: const Text('Primera app', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        elevation: 30,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () {
              // handle the press
              log('Se presiono');
            },
          ),
        ],
      ),
    
      body: SizedBox(
        height: size.height,
        child: Column(
          children: [
            CustomCard(
              elevation: 0,
              childPadding: 0,
              borderWidth: 1,
              width: size.width,
              height: size.height * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomCard(
                    elevation: 5,
                    child: Text('Nombre: $nombre'),
                  ),
                  CustomCard(
                    elevation: 5,
                    child: Text('Apellido: $apellido'),
                  ),
                  CustomCard(
                    elevation: 5,
                    child: Text('Edad: $edad'),
                  ),
                ],
              ),
            ),

            SizedBox(height: size.shortestSide * .4),

            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SecondScreen()
                ),
              ),
              child: const Text('Ejemplo Andres')
            )

          ],
        ),
      )
    );
  }
}