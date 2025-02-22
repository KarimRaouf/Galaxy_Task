import 'package:dio/dio.dart';

import '../../../../../core/helper/constants/network_constants.dart';
import '../../../../../core/networking/error/dio_error_handler.dart';
import '../../../../../core/networking/error/exceptions.dart';
import '../../../domain/models/article_model.dart';
import '../../../domain/models/article_response_model.dart';
import '../../../domain/models/articles_params.dart';
import 'article_abstract_api.dart';


class ArticlesImplApi extends AbstractArticleApi {
  final Dio dio;

  CancelToken cancelToken = CancelToken();

  ArticlesImplApi(this.dio);

  // Articles Method
  @override
  Future<ApiResponse<List<ArticleModel>>> getArticles(
      ArticlesParams params) async {
    try {
      final result = (await dio.get(
        getArticlePath(params.period),
      ));
      if (result.data == null)
        throw ServerException("Unknown Error", result.statusCode);

      return ApiResponse.fromJson<List<ArticleModel>>(
          result.data, ArticleModel.fromJsonList);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }
}