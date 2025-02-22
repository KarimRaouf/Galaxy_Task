import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galaxy_app/core/helper/extentions.dart';
import 'package:galaxy_app/features/articles/presentation/cubit/article_cubit.dart';

import '../../../../core/routing/routes.dart';
import '../views/article_details_view.dart';
import 'article_listview_item.dart';

class ArticleListView extends StatelessWidget {
  const ArticleListView({super.key, required this.articlesCubit});

  final ArticlesCubit articlesCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: articlesCubit.allArticles.length,
        itemBuilder: (context, index) {
          return ArticleListViewItem(
            index: index,
            articlesCubit: articlesCubit,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: articlesCubit,
                    child: ArticleDetailsView(
                      articlesCubit: articlesCubit,
                      index: index,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
