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
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double height = constraints.maxHeight;
          final double width = constraints.maxWidth;
          return Stack(
            children: [
              // FONDO
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/gym_background.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      
              // CONTENIDO DEL BODY
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
      
                    SizedBox(height: height * 0.08),
      
                    // TEXTO ANIMADO
                    SizedBox(
                      width: width,
                      height: height * 0.15,
                      child: AnimatedTextKit(
                        repeatForever: true,
                        pause: const Duration(seconds: 1),
                        animatedTexts: [
                          TyperAnimatedText(
                            'Fit\nEvolution',
                            textStyle: TextStyle(
                              fontSize: width * 0.1,
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
      
                    const Spacer(),
      
                    customText(
                      text: 'NO ENTRENES DURO,\nENTRENA INTELIGENTE',
                      size: width * 0.07,
                      color: Colors.white,
                      nigga: FontWeight.bold,
                    ),
      
                    SizedBox(height: height * 0.03),
      
                    // BOTONERA
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        materialAsyncButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ),
                            );
                          },
                          text: 'Únete Ahora',
                          minWidth: width * 0.4,
                          color: const Color(0xFF0D47A1),
                          textColor: Colors.white,
                          height: height * 0.06,
                          borderRadius: 30,
                          textsize: width * 0.045,
                        ),
                        materialAsyncButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          text: 'Iniciar Sesión',
                          minWidth: width * 0.4,
                          color: Colors.transparent,
                          textColor: Colors.white,
                          height: height * 0.06,
                          borderRadius: 30,
                          borderColor: Colors.white,
                          borderWidth: 1,
                          textsize: width * 0.045,
                        ),
                      ],
                    ),
      
                    SizedBox(height: height * 0.1),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

