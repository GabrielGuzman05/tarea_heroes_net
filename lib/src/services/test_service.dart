import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:tarea_heroes_net/src/models/mis_heroes_model.dart';

class TestService {
  final String _baseUrl = 'https://www.hectoralvarez.dev/icc727/';

  Map<String, String> _headers = {
    'Content-Type': 'application/json',
    'Authorization': 'mi\$up34Token'
  };

  Future<MisHeroesModel> getLista() async {
    final response =
        await http.get(this._baseUrl + 'heroes.json', headers: this._headers);

    print('Código status del GET: ${response.statusCode}');
    if (response.statusCode == 200){
      //print(response.body);
      return MisHeroesModel.fromJson(json.decode(response.body));
    } 

    return MisHeroesModel();
  }

  Future<bool> postGreeting() async {
    final response = await http.post(this._baseUrl,
        headers: this._headers, body: jsonEncode({"saludo": "hola"}));

    print('Código status del POST: ${response.statusCode}');
    if(response.statusCode == 200) print(response.body);

    return true;
  }
}
