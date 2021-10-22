import 'dart:convert' as convert;

import 'package:app_http/classes/request_data.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final respuesta = welcomeFromJson(res.body);
    for (int i = 0; i < 100; i++) {
      print('${respuesta.instructions}');
    }
  });
}
