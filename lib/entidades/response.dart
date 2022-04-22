import 'package:hello_world/entidades/User.dart';

class ResponseApi {
  final bool successful;
  final dynamic data;

  const ResponseApi({required this.successful, required this.data});

  factory ResponseApi.fromJson(Map<String, dynamic> json) {
    return ResponseApi(successful: json['successful'], data: json['data']);
  }
}
