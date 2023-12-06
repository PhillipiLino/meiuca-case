import 'package:flutter/material.dart';

import '../utils/url_helper.dart';
import '../view_models/articles_view_model.dart';
import 'articles_list.dart';

class NewsListPage extends StatefulWidget {
  const NewsListPage({super.key});

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  final ArticlesViewModel _viewModel = ArticlesViewModel();
  final scrollController = ScrollController();
  bool showFloating = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset <= 1) {
        if (!showFloating) return;
        setState(() => showFloating = false);
      }

      if (scrollController.offset > 1) {
        if (showFloating) return;
        setState(() => showFloating = true);
      }
    });
  }

  _scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('News'),
      ),
      body: Center(
        child: ArticlesList(
          openUrl: (url) => UrlHelper.openUrl(url),
          scrollController: scrollController,
          getArticles: _viewModel.getData,
        ),
      ),
      floatingActionButton: showFloating
          ? FloatingActionButton(
              onPressed: _scrollToTop,
              child: const Icon(Icons.arrow_upward),
            )
          : null,
    );
  }
}
