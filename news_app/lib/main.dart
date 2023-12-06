import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';

import 'views/news_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: meiucaBrandColors.primary.one,
        ),
      ),
      home: const NewsListPage(),
    );
  }
}
