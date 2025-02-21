import 'package:flutter/material.dart';
import 'package:galaxy_app/core/routing/routes.dart';
import 'package:galaxy_app/features/articles/presentation/views/article_view.dart';

import '../../features/articles/presentation/views/article_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (arguments as ClassName)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.articleView:
        return MaterialPageRoute(builder: (_) => const ArticleView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
