import 'package:flutter/material.dart';
import 'package:hello_world/screen_registro/registro.dart';

class ScreenRegistro extends StatelessWidget {
  const ScreenRegistro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: const Center(
        child: const RegistroWidget(),
      ),
    );
  }
}
