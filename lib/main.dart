import 'package:andres_app/validators/exports_validations.dart';
import 'package:flutter/material.dart';
import 'package:andres_app/screens/login_register/initial_screen.dart';
import 'package:provider/provider.dart';


void main() {
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