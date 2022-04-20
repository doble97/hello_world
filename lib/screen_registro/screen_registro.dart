import 'package:flutter/material.dart';
import 'package:hello_world/screen_registro/login.dart';

class Registro extends StatelessWidget {
  const Registro({Key? key}) : super(key: key);

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
