import 'dart:convert';

import 'package:hello_world/entidades/response.dart';
import 'package:http/http.dart' as http;

class CallApi {
  Future<ResponseApi> make_login(String email, String password) async {
    var response = await http.post(Uri.parse('api' + 'login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body:
            jsonEncode(<String, String>{'email': email, 'password': password}));
    if (response.statusCode == 200) {
      return ResponseApi.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('Fallo en obtener datos')
    }
  }
}
