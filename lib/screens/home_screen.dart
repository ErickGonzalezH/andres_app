import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Fondo con imagen
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/gym_background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Texto animado "Fit\nEvolution" más arriba y cargado a la izquierda
          Positioned(
            top: 30,
            left: 30,
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(seconds: 2),
              animatedTexts: [
                TyperAnimatedText(
                  'Fit\nEvolution',
                  textStyle: const TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                    height: 0.9, // 👈 ajusta separación vertical
                  ),
                  speed: const Duration(milliseconds: 100),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),

          // Contenido inferior
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'NO ENTRENES DURO,\nENTRENA INTELIGENTE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción para "Únete Ahora"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0D47A1),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Únete Ahora',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Acción para "Iniciar Sesión"
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Iniciar Sesión',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
<<<<<<< HEAD
=======
    
      body: SizedBox(
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomCard(
                childPadding: 0,
                elevation: 0,
                width: size.width,
                child: Image.asset("assets/images/lago.jpg", fit: BoxFit.cover),
              ),
              CustomCard(
                elevation: 0,
                childPadding: 0,
                borderWidth: 1,
                width: size.width,
                height: size.height * .3,
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
          
              SizedBox(height: size.shortestSide * .1),
          
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
        ),
      )
>>>>>>> f9b8cc7ede3ab9c782f0d19cb4bafe36071f9c21
    );
  }
}
