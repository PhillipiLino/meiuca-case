import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:pagination_view/pagination_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../models/news_article_model.dart';
import 'fake_article_card.dart';

class ArticlesList extends StatefulWidget {
  final ScrollController? scrollController;
  final void Function(String) openUrl;
  final Future<List<NewsArticleModel>> Function(int) getArticles;

  const ArticlesList({
    required this.getArticles,
    required this.openUrl,
    this.scrollController,
    super.key,
  });

  @override
  State<ArticlesList> createState() => ArticlesListState();
}

class ArticlesListState extends State<ArticlesList> {
  final paginationViewKey = GlobalKey<PaginationViewState>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => paginationViewKey.currentState?.refresh(),
      child: PaginationView<NewsArticleModel>(
        scrollController: widget.scrollController,
        key: paginationViewKey,
        pullToRefresh: true,
        padding: meiucaSpacingSquishSizes.lg,
        pageFetch: widget.getArticles,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, __) => SizedBox(height: meiucaSpacingSizes.xs),
        itemBuilder: (BuildContext _, NewsArticleModel article, int __) {
          return MeiucaCardContent(
            title: article.title,
            subtitle: article.author,
            paragraph: article.description,
            onPressButton: () => widget.openUrl(article.url),
          );
        },
        onError: (_) {
          return Text(
            'Desculpe, ocorreu um erro, tente novamente mais tarde',
            style: MeiucaTextStyles.subtitleSmall(),
          );
        },
        onEmpty: const SizedBox(),
        bottomLoader: const Skeletonizer(child: FakeArticleCard()),
        initialLoader: Skeletonizer(
          child: ListView.separated(
            itemCount: 5,
            padding: meiucaSpacingSquishSizes.lg,
            itemBuilder: (_, __) => const FakeArticleCard(),
            separatorBuilder: (_, __) => SizedBox(
              height: meiucaSpacingSizes.xs,
            ),
          ),
        ),
      ),
    );
  }
}
