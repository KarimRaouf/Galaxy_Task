import '../../core/networking/dio_network.dart';
import '../../core/utils/injections.dart';
import 'data/data_sources/remote/article_impl_api.dart';
import 'data/repositories/article_repo_impl.dart';
import 'domain/repositories/abstract_articles_repository.dart';
import 'domain/usecases/articles_usecase.dart';

initArticlesInjections() {
  sl.registerSingleton<ArticlesImplApi>(ArticlesImplApi(DioNetwork.appAPI));
  sl.registerSingleton<AbstractArticlesRepository>(ArticlesRepositoryImpl(sl()));
  sl.registerSingleton<ArticlesUseCase>(ArticlesUseCase(sl()));
}