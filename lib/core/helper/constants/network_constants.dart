const String apiUrl = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/";
const String apiKey = "YpkoKHUOn0woVFjV5hwamy9yW8MOutv0";

String getApiKeyPath() {
  return "?api-key=$apiKey";
}

String getArticlePath(int period) {
  return "all-sections/${period.toString()}.json${getApiKeyPath()}";
}