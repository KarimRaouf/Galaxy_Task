import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class ArticleApp extends StatelessWidget {
  const ArticleApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(320 , 570),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        title: 'Times Articles',
        theme: ThemeData(
          primaryColor: Colors.tealAccent,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.articleView,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
