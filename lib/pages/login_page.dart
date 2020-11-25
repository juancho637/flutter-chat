import 'package:flutter/material.dart';

import 'package:chat/widgets/logo.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/blue_button.dart';
import 'package:chat/widgets/labels.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(title: 'Messenger'),
                  _Form(),
                  Labels(
                      title: '¿No tienes cuenta?',
                      textToAction: 'Crea una ahora!',
                      route: 'register'),
                  Text(
                    'Términis y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
              icon: Icons.mail_outline,
              placeholder: 'Correo electrónico',
              keyboardType: TextInputType.emailAddress,
              textController: emailController),
          CustomInput(
              icon: Icons.lock_outline,
              placeholder: 'Contraseña',
              keyboardType: TextInputType.text,
              textController: passwordController,
              isPassword: true),
          BlueButton(
              text: 'Ingresar',
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
              })
        ],
      ),
    );
  }
}
