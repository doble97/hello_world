import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final String api = 'http://10.0.2.2:7777/';
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget _inputForm(TextEditingController inputController, String value,
      {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      controller: inputController,
      decoration:
          InputDecoration(border: const OutlineInputBorder(), hintText: value),
    );
  }

  Widget _paddig(Widget child) {
    return Padding(padding: EdgeInsets.all(16.0), child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: const Text('Login',
                style: const TextStyle(color: Colors.blueAccent, fontSize: 32)),
          ),
          _paddig(_inputForm(emailController, 'Correo electrónico',
              isPassword: false)),
          _paddig(
              _inputForm(passwordController, 'Contraseña', isPassword: true)),
          Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24.0),
                ),
                onPressed: () {
                  print('Entrando ' +
                      emailController.text +
                      passwordController.text);
                  http
                      .post(
                    Uri.parse(api + 'login'),
                    headers: <String, String>{
                      'Content-Type': 'application/json; charset=UTF-8'
                    },
                    body: jsonEncode(<String, String>{
                      'email': emailController.text,
                      'password': passwordController.text
                    }),
                  )
                      .then((value) {
                    print('EXITO--->' + value.body);
                  }).catchError((e) {
                    print('Error-->');
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('¿No tienes cuenta?'),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registro');
                  },
                  child:
                      const Text('Registrarse', style: TextStyle(fontSize: 18)))
            ],
          )
        ]);
  }
}
