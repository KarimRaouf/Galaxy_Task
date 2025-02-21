import 'package:flutter/material.dart';

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
            onTap: () {},
          );
        },
      ),
    );
  }
}
