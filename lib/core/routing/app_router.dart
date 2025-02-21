import 'package:flutter/material.dart';
import 'package:galaxy_app/core/routing/routes.dart';
import 'package:galaxy_app/features/articles/presentation/views/article_details_view.dart';
import 'package:galaxy_app/features/articles/presentation/views/article_view.dart';

import '../../features/articles/presentation/views/article_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.articleView:
        return MaterialPageRoute(builder: (_) => const ArticleView());
      case Routes.articleDetailsView:
        return MaterialPageRoute(builder: (_) => const ArticleDetailsView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
