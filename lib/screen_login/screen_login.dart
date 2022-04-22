import 'package:flutter/material.dart';
import 'package:hello_world/screen_login/login.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return MaterialApp(
    //   title: 'Kario flutter',
    //   home: Scaffold(
    //     backgroundColor: Colors.amber,
    //     appBar: AppBar(
    //       title: Text('Kario'),
    //     ),
    //     body: Center(child: LoginWidget()),
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          'Kario',
        ),
      ),
      body: Center(child: LoginWidget()),
    );
  }
}
