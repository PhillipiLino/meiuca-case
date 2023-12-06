import 'package:flutter/material.dart';

import '../models/news_article_model.dart';
import '../models/news_response_model.dart';
import '../services/google_api_service.dart';

class ArticlesViewModel extends ChangeNotifier {
  final GoogleApiService _apiService = GoogleApiService();

  Future<List<NewsArticleModel>> getData(int position) async {
    const pageSize = 10;
    final pageToUse = position == 0 ? 1 : ((position / pageSize) + 1).ceil();

    final data = await _apiService.getData(page: pageToUse, pageSize: pageSize);
    final newsData = NewsResponseModel.fromJson(data);

    return newsData.articles ?? [];
  }
}
