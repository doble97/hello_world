import 'package:flutter/material.dart';
import 'package:hello_world/screen_login/login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Kario flutter',
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Kario'),
        ),
        body: Center(child: LoginWidget()),
      ),
    );
  }
}
