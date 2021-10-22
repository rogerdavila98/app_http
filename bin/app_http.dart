import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  //final url = Uri.parse('https://reqres.in/api/users?page=2');
  final url = Uri.parse('https://restcountries.com/v2/all');
  http.get(url).then((res) {
    final Body = convert.jsonDecode(res.body);
    for (int i = 0; i < 100; i++) {
      // print('${Body['data']}[i]["email"]}');
      print('${Body[i]['name']}');
    }
  });
}
