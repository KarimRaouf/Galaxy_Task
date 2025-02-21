import 'package:flutter/material.dart';
import 'package:galaxy_app/article_app.dart';
import 'package:galaxy_app/features/articles/presentation/views/article_view.dart';

import 'core/routing/app_router.dart';

void main() {
  runApp(ArticleApp(appRouter: AppRouter()));
}
