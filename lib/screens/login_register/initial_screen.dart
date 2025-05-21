import 'package:andres_app/screens/export_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:andres_app/widgets/export_widgets.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: [

          //FONDO
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/gym_background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //CONTENIDO DEL BODY
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: size.height * .05),

                //TEXTO ANIMADO
                SizedBox(
                  width: size.width,
                  height: size.height * .1,
                  child: AnimatedTextKit(
                    repeatForever: true,
                    pause: const Duration(seconds: 1),
                    animatedTexts: [
                      TyperAnimatedText(
                        'Fit\nEvolution',
                        textStyle: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2,
                          height: 0.9,
                        ),
                        speed: const Duration(milliseconds: 170),
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: size.height * .55),
                customText(
                  text: 'NO ENTRENES DURO,\nENTRENA INTELIGENTE',
                  size: 30,
                  color: Colors.white,
                  nigga: FontWeight.bold,
                ),
                SizedBox(height: size.height * .04),

                //BOTONERA
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    materialAsyncButton(
                      onPressed: () async {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen()
                          ),
                        );
                      },
                      text: 'Únete Ahora', 
                      minWidth: size.width * .4, 
                      color: const Color(0xFF0D47A1),
                      textColor: Colors.white,
                      height: size.height * .055,
                      borderRadius: 30,
                      textsize: 17
                    ),

                    materialAsyncButton(
                      onPressed: () async {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen()
                          ),
                        );
                      },
                      text: 'Iniciar Sesión', 
                      minWidth: size.width * .4, 
                      color: Colors.transparent,
                      textColor: Colors.white,
                      height: size.height * .055,
                      borderRadius: 30,
                      borderColor: Colors.white,
                      borderWidth: 1,
                      textsize: 17
                    ),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
