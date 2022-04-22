import 'package:flutter/material.dart';

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
      body: Center(
        child: ElevatedButton(
          child: const Text('Regresar'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
