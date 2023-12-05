class MeiucaThemePropertyDataAttributes {
  final String category;
  final String type;

  static const String _category = 'category';
  static const String _type = 'type';

  MeiucaThemePropertyDataAttributes({
    required this.category,
    required this.type,
  });

  MeiucaThemePropertyDataAttributes.fromJSON(Map<String, dynamic>? json)
      : category = (json?[_category] as String?) ?? '',
        type = (json?[_type] as String?) ?? '';

  toJSON() => {
        _category: category,
        _type: type,
      };
}
