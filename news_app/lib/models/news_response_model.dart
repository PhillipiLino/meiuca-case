import 'news_article_model.dart';

class NewsResponseModel {
  final String? status;
  final int? totalResults;
  final List<NewsArticleModel>? articles;

  static const String _status = 'status';
  static const String _totalResults = 'totalResults';
  static const String _articles = 'articles';

  const NewsResponseModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  NewsResponseModel.fromJson(Map<String, dynamic> json)
      : status = json[_status],
        totalResults = json[_totalResults],
        articles = (json[_articles] as List?)
            ?.map((element) => NewsArticleModel.fromJson(element))
            .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json[_status] = status;
    json[_totalResults] = totalResults;
    json[_articles] = articles?.map((e) => e.toJson()).toList();

    return json;
  }
}
