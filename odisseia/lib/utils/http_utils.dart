import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:odisseia/exception/not_found_exception.dart';

class Http {
  static Future<Object> get(String url) async =>
      await http.get(url).then((http.Response response) {
        if (response.statusCode == 200) {
          return response.body;
        }
        if (response.statusCode == 404) {
          throw NotFoundException("Não foram encontrados resultados!");
        }
        return null;
      });

  static Future<Object> post(String url, Object jsonObj) async => await http
          .post(url,
              headers: {"Content-Type": "application/json"},
              body: json.encode(jsonObj))
          .then((http.Response response) {
        if (response.statusCode == 200) {
          return response.body;
        }

        if (response.statusCode == 404) {
          throw NotFoundException("Não foram encontrados resultados!");
        }

        return null;
      });
}