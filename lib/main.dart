import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:andres_app/validators/exports_validations.dart';
import 'package:andres_app/screens/login_register/initial_screen.dart';

void main() {
  
  //INICIALIZA LOS WIDGETS CORRECTAMENTE AL INICIAR LA APP
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ValidateLogin()),
        ChangeNotifierProvider(create: (_) => ValidateRegister()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curso Andres App',
      home: InicialScreen(),
    );
  }
}