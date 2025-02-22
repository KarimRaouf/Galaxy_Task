import 'package:dartz/dartz.dart';

import '../../../../core/networking/error/failures.dart';
import '../models/article_model.dart';
import '../models/articles_params.dart';

abstract class AbstractArticlesRepository {
  Future<Either<Failure, List<ArticleModel>>> getArticles(
    ArticlesParams params,
  );
}
