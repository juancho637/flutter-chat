import 'package:flutter/material.dart';

import 'package:chat/widgets/logo.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/blue_button.dart';
import 'package:chat/widgets/labels.dart';

class RegisterPage extends StatelessWidget {
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
                  Logo(title: 'Registro'),
                  _Form(),
                  Labels(
                      title: '¿Ya tienes una cuenta?',
                      textToAction: 'Ingresa!',
                      route: 'login'),
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
  final nameController = TextEditingController();
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
              icon: Icons.perm_identity,
              placeholder: 'Nombre',
              keyboardType: TextInputType.text,
              textController: nameController),
          CustomInput(
              icon: Icons.mail_outline,
              placeholder: 'Email',
              keyboardType: TextInputType.emailAddress,
              textController: emailController),
          CustomInput(
              icon: Icons.lock_outline,
              placeholder: 'Password',
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
