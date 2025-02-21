import 'package:flutter/material.dart';
import 'package:galaxy_app/core/helper/extentions.dart';

import '../../../../core/routing/routes.dart';
import 'article_listview_item.dart';

class ArticleListView extends StatelessWidget {
  const ArticleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ArticleListViewItem(
            index: index,
            onTap: () {
              context.pushNamed(Routes.articleDetailsView);
            },
          );
        },
      ),
    );
  }
}
