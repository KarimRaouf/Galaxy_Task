import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galaxy_app/features/articles/domain/models/articles_params.dart';
import 'package:galaxy_app/features/articles/domain/usecases/articles_usecase.dart';
import 'package:galaxy_app/features/articles/presentation/cubit/article_states.dart';

import '../../../../core/networking/error/failures.dart';
import '../../../../core/utils/injections.dart';
import '../../domain/models/article_model.dart';

class ArticlesCubit extends Cubit<ArticlesStates> {
  ArticlesCubit({required this.articlesUseCase}) : super(ArticleInitialState());

  static ArticlesCubit get(context) => BlocProvider.of(context);

  final ArticlesUseCase articlesUseCase;
  List<ArticleModel> allArticles = [];

  Future<void> getArticles({required int period}) async {
    emit(ArticleGetLoadingState());

    final result = await articlesUseCase.call(ArticlesParams(period: period));

    result.fold((l) {
      if (l is CancelTokenFailure) {
        emit(ArticleGetLoadingState());
      } else {
        emit(ArticleGetFailureState(l.errorMessage));
      }
    }, (r) {
      allArticles = r;
      emit(ArticleGetSuccessState());
    });
  }

  String? getMediaUrl(int index, {bool isSmallImage = true}) {
    final article = allArticles[index];
    int imageSizeIndex = isSmallImage ? 0 : 2;
    if (article.media != null &&
        article.media!.isNotEmpty &&
        article.media![0].mediaMetadata != null &&
        article.media![0].mediaMetadata!.isNotEmpty) {
      return article.media![0].mediaMetadata![imageSizeIndex].url;
    }
    return '';
  }


  String getMediaCaption(ArticlesCubit articlesCubit, int index) {
    final article = articlesCubit.allArticles[index];
    if (article.media != null &&
        article.media!.isNotEmpty &&
        article.media![0].caption != null) {
      return article.media![0].caption!;
    }
    return '';
  }

}
