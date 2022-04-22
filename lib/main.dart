import 'package:flutter/material.dart';
import 'package:hello_world/screen_login/screen_login.dart';
import 'package:hello_world/screen_registro/screen_registro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kario app',
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenLogin(),
        '/registro': (context) => const ScreenRegistro()
      },
    );
  }
}
