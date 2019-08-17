import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:odisseia/excpetion/not_found_excpetion.dart';

class Http {
  static Future<Object> post(
      String url, Object jsonObj) async {
    return await http
        .post(url,
            headers: {"Content-Type": "application/json"},
            body: json.encode(jsonObj))
        .then((http.Response response) {
      if (response.statusCode == 200) {
        return response.body;
      }

      if (response.statusCode == 404){
        throw NotFoundExcpetion("Não foram encontrados resultados!");
      }

      return null;
    });
  }
}
