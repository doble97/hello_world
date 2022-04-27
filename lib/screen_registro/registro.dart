import 'package:flutter/material.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({Key? key}) : super(key: key);

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidosController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget _inputForm(TextEditingController ctl, String value,
      {isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      controller: ctl,
      decoration:
          InputDecoration(border: const OutlineInputBorder(), hintText: value),
    );
  }

  Widget _paddingWidget(Widget child) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Registrarse',
            style: TextStyle(color: Colors.blueAccent, fontSize: 32),
          ),
          _paddingWidget(_inputForm(nombreController, 'Nombre')),
          _paddingWidget(_inputForm(apellidosController, 'Apellidos')),
          _paddingWidget(_inputForm(emailController, 'Email')),
          _paddingWidget(
              _inputForm(passwordController, 'Contraseña', isPassword: true)),
          ElevatedButton(
              onPressed: () {
                print('ENviando registro');
              },
              child: Text('Enviar'))
        ],
      ),
    );
  }
}
