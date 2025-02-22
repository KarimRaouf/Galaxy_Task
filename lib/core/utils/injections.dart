import 'package:get_it/get_it.dart';

import '../../features/articles/article_injections.dart';
import '../networking/dio_network.dart';
import 'log/app_logger.dart';


final sl = GetIt.instance;

Future<void> initInjections() async {
  await initDioInjections();
  await initArticlesInjections();
}


Future<void> initDioInjections() async {
  initRootLogger();
  DioNetwork.initDio();
}