import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:newsify/features/news/data/models/news_main_response_dto.dart';

import '../../../../core/network/constants.dart';

class NewsApi {
  Future<NewsMainResponseDto?> fetchForecastData({required String query}) async {
    final url = Uri.parse(
        '${NetworkConstants.baseUrl}/news?access_key=${NetworkConstants.apiKey}&languages=en');
    final response = await get(url);

    debugPrint('response: $response');

    if (response.statusCode == 200) {
      final map = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return NewsMainResponseDto.fromJson(map);
    } else {
      return null;
    }
  }
}
