import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:line_icons/line_icons.dart';

import 'package:andres_app/colors/export_colors.dart';
// import 'package:andres_app/screens/export_screen.dart';
import 'package:andres_app/widgets/export_widgets.dart';
import 'package:andres_app/validators/exports_validations.dart';
import 'package:andres_app/widgets/design/toast/toast_widget.dart';

class LoginScreen extends StatefulWidget {
   
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  bool selectd = false;

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      final loginValidator = Provider.of<ValidateLogin>(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          
          //IMAGEN
          ClipPath(
            clipper: DiagonalClipper(),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withAlpha(102),
                BlendMode.darken,
              ),
              child: Image.asset(
                'assets/images/pesas_uno.jpeg',
                width: size.width,
                height: size.height * 0.45,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //TEXTOS Y FORM
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Form(
                  key: loginValidator.keyLogin,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                      SizedBox(height: size.height * .03),

                      //REGRESAR
                      materialSyncButton(
                        onPressed: () => Navigator.pop(context),
                        text: 'Regresar', 
                        minWidth: size.width * .2, 
                        color: Colors.transparent,
                        textColor: Colors.white,
                        height: size.height * .055,
                        borderRadius: 30,
                        borderColor: Colors.white,
                        borderWidth: 1,
                        textsize: 17
                      ),
                  
                      SizedBox(height: size.height * .06),
                  
                      // Título
                      richText(
                        text1: 'Hola ', 
                        textColor1: Colors.white,
                        textSize1: 28,
                        text2: 'madafaker',
                        textColor2: Colors.white,
                        textSize2: 28,
                        fontWeight2: FontWeight.bold
                      ),
                  
                      SizedBox(height: size.height * .01),
                  
                      customText(
                        text: 'Ingresa tu correo y contraseña para iniciar sesión',
                        color: Colors.white70,
                      ),
                  
                      SizedBox(height: size.height * .1),
                  
                      const SizedBox(height: 8),
                  
                      // Email input
                      containerCampos(
                        size: size,
                        context: context,
                        text: 'Email',
                        textColor: Colors.white,
                        widget: textform(
                          context: context,
                          size: size,
                          onchange: (val) => loginValidator.email = val,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Please, this space cant be empty';
                            }
                            return null;
                          },
                          hintText: 'example@example.com',
                          textInputType: TextInputType.emailAddress,
                        ),
                      ),

                      // PASSWORD
                      containerCampos(
                        size: size,
                        context: context,
                        text: 'Contraseña',
                        textColor: Colors.white,
                        widget: textform(
                          context: context,
                          size: size,
                          onchange: (val) => loginValidator.password = val.replaceAll(' ', ''),
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Por favor, ingrese una contraseña';
                            }
                            if (val.replaceAll(' ', '').isEmpty) {
                              return 'La contraseña no puede contener espacios';
                            }
                            return null;
                          },
                          hintText: 'Escribe tu contraseña',
                          obscureText: !selectd,
                          maxLines: 1,
                          iconButton: IconButton(
                            icon: selectd
                                ? const Icon(LineIcons.eye)
                                : const Icon(LineIcons.eyeSlash),
                            onPressed: () {
                              setState(() {
                                selectd = !selectd;
                              });
                            },
                          ),
                        ),
                      ),
                  
                      SizedBox(height: size.height * .05),
                  
                      //INGRESAR
                      Align(
                        alignment: Alignment.centerRight,
                        child: materialAsyncButton(
                          // onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                          //   MaterialPageRoute(builder: (context) => HomeScreen()),
                          //   (Route<dynamic> route) => false,
                          // ),
                          onPressed: () async {
                            showCustomToast(context: context, message: 'Ingresar');
                          },
                          text: 'Ingresar', 
                          textColor: Colors.white,
                          minWidth: size.width * .35, 
                          height: size.height * .05,
                          color: Colors.purpleAccent,
                          borderRadius: 30
                        )
                      ),

                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 80);
    path.lineTo(size.width, size.height * 0.6);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}