import 'package:dartz/dartz.dart';
import '../../../../core/networking/error/exceptions.dart';
import '../../../../core/networking/error/failures.dart';
import '../../domain/models/article_model.dart';
import '../../domain/models/articles_params.dart';
import '../../domain/repositories/abstract_articles_repository.dart';
import '../data_sources/remote/article_impl_api.dart';

class ArticlesRepositoryImpl extends AbstractArticlesRepository {
  final ArticlesImplApi articlesApi;

  ArticlesRepositoryImpl(this.articlesApi);

  @override
  Future<Either<Failure, List<ArticleModel>>> getArticles(
      ArticlesParams params) async {
    try {
      final result = await articlesApi.getArticles(params);
      // Ensure that result.results is a List<ArticleModel>? type.
      return Right(result.results ?? []);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    }
  }
}
