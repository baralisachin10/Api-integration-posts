import 'dart:convert';
import './model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future getContent() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final decodedResult = jsonDecode(response.body);
        List<ModelContent> contents = List.from(decodedResult)
            .map((e) => ModelContent.fromjson(e))
            .toList();
        return contents;
      }
    } catch (e) {
      rethrow;
    }
  }
}
