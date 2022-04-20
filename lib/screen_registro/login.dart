import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          child: Text(
            "Login",
              style: TextStyle(color: Colors.blue, fontSize: 24.0),
        ),
        Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Correo electrónico'),
            )),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Contraseña'),
          ),
        )
      ]
    );
  }
}
