import 'dart:convert';

import 'package:festival_search/model/content.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<List<Content>?> fetchContents() async {
    final url =
        Uri.parse('http://festival-db.ddo.jp/api/v1/contents/searchYouTube');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> body = jsonDecode(response.body);
        final List<Content> contents =
            body.map((dynamic content) => Content.fromJson(content)).toList();
        return contents;
      } else {
        return null;
      }
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
    return null;
  }
}
