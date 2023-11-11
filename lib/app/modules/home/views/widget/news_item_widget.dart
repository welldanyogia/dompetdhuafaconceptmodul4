import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../model/news_model.dart';
import '../../../webviewnews/views/webviewnews_view.dart';

class NewsItemWidget extends StatelessWidget {
  final Article article;
  const NewsItemWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Theme.of(context).primaryColor,
      child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          title: Text(
            article.title ?? '',
          ),
          subtitle: Text(article.description ?? ''),
          onTap: () {
            Get.to(WebviewnewsView(
              url: article.url ?? '',
            ));
          }),
    );
  }
}
