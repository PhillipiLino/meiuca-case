import 'dart:convert';

import 'package:http/http.dart' as http;

class GoogleApiService {
  Future<Map<String, dynamic>> getData({
    required int page,
    required int pageSize,
  }) async {
    final url = Uri.parse(
      'https://newsapi.org/v2/everything?q=quadrinhos&apiKey=e24548f6413d49a0b773fce5e58ec1ed&page=$page&pageSize=$pageSize',
    );

    final response = await http.get(url);
    final jsonData = jsonDecode(response.body);

    return jsonData;
  }
}
