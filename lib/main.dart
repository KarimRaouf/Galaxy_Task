import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galaxy_app/article_app.dart';
import 'package:galaxy_app/features/articles/presentation/views/article_view.dart';

import 'bloc_observer.dart';
import 'core/routing/app_router.dart';
import 'core/utils/injections.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await initInjections();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(ArticleApp(appRouter: AppRouter()));
}
