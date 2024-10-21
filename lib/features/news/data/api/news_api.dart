import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:newsify/features/news/data/models/news_main_response_dto.dart';

import '../../../../core/network/constants.dart';

class NewsApi {
  Future<NewsMainResponseDto?> fetchNewsData({required String query}) async {
    final url = Uri.parse(
        '${NetworkConstants.baseUrl}/news?access_key=${NetworkConstants.apiKey}&keywords=tennis&countries=us');
    final response = await get(url);
    // http://api.mediastack.com/v1/news?access_key=42f290b4553e580da4bc5b52f01e97b7&keywords=tennis&countries=us

    debugPrint('response: $response');

    if (response.statusCode == 200) {
      final map = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return NewsMainResponseDto.fromJson(map);
    } else {
      return null;
    }
  }
}
