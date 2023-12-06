class NewsArticleModel {
  final String author;
  final String title;
  final String description;
  final String url;

  static const String _author = 'author';
  static const String _title = 'title';
  static const String _description = 'description';
  static const String _url = 'url';

  const NewsArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
  });

  NewsArticleModel.fromJson(Map<String, dynamic> json)
      : author = json[_author] ?? 'UNKNOWN',
        title = json[_title] ?? 'UNKNOWN',
        description = json[_description] ?? 'UNKNOWN',
        url = json[_url] ?? '';

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json[_author] = author;
    json[_title] = title;
    json[_description] = description;
    json[_url] = url;

    return json;
  }
}
