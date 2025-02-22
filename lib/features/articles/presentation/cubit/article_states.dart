sealed class ArticlesStates {}

final class ArticleInitialState extends ArticlesStates {}

final class ArticleGetLoadingState extends ArticlesStates {}

final class ArticleGetFailureState extends ArticlesStates {
  final String errorMessage;

  ArticleGetFailureState(this.errorMessage);
}

final class ArticleGetSuccessState extends ArticlesStates {}
