import 'package:dio/dio.dart';

String handleDioError(DioException error) {
  String errorDescription = "";

  switch (error.type) {
    case DioExceptionType.cancel:
      errorDescription = "Request to API server was cancelled";
      break;
    case DioExceptionType.connectionTimeout:
      errorDescription = "Connection timeout with API server";
      break;
    case DioExceptionType.sendTimeout:
      errorDescription = "Send timeout in connection with API server";
      break;
    case DioExceptionType.receiveTimeout:
      errorDescription = "Receive timeout in connection with API server";
      break;
    case DioExceptionType.badResponse:
      {
        // You might want to adjust this logic based on your API contract.
        final response = error.response;
        if (response != null) {
          if (response.data is Map<String, dynamic>) {
            final data = response.data as Map<String, dynamic>;
            if (data['code'] != null && "${data['code']}" != "0") {
              errorDescription = data['msg']?.toString() ?? "";
            } else {
              switch (response.statusCode) {
                case 200:
                  if ("${(data["statusCode"] ?? "0")}" != "0") {
                    errorDescription = data['fault']?['faultstring']?.toString() ?? "Unknown Error";
                  }
                  break;
                case 422:
                  if (data["data"] != null && data["data"]["validations"] != null) {
                    errorDescription = data["data"]["validations"].values.first[0]?.toString() ?? "Unknown Error";
                  } else if (data["errors"] != null) {
                    errorDescription = data["errors"].values.first[0]?.toString() ?? "Unknown Error";
                  } else {
                    errorDescription = data['fault']?['faultstring']?.toString() ?? "Unknown Error";
                  }
                  break;
                case 413:
                  errorDescription = response.statusMessage ?? "";
                  break;
                case 400:
                case 401:
                  errorDescription = data['fault']?['faultstring']?.toString() ?? "Unknown Error";
                  break;
                case 403:
                  errorDescription = data is String
                      ? "403 Forbidden"
                      : data['fault']?['faultstring']?.toString() ?? "Unknown Error";
                  break;
                case 404:
                  errorDescription = data is String
                      ? "404 Unknown Error"
                      : data['fault']?['faultstring']?.toString() ?? "Unknown Error";
                  break;
                case 409:
                  final faultString = data['fault']?['faultstring']?.toString() ?? "Unknown Error";
                  final minsToJoin = data["data"]?["mins_to_join"]?.toString() ?? "";
                  errorDescription = minsToJoin.isNotEmpty ? "$faultString,\n Minutes left to join: $minsToJoin" : faultString;
                  break;
                case 429:
                  errorDescription = data['fault']?['faultstring']?.toString() ?? "Unknown Error";
                  break;
                default:
                  errorDescription = "Received invalid status code: ${response.statusCode}";
              }
            }
          } else {
            errorDescription = "Unexpected response format.";
          }
        } else {
          errorDescription = "Bad response error without data.";
        }
        break;
      }
    case DioExceptionType.badCertificate:
      errorDescription = "Bad certificate.";
      break;
    case DioExceptionType.connectionError:
      errorDescription = "Connection error occurred.";
      break;
    case DioExceptionType.unknown:
      errorDescription = "Unexpected error occurred.";
      break;
  }

  return errorDescription;
}
