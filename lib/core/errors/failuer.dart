import 'package:dio/dio.dart';

// Base class for representing failures with a message.
class Failure {
  final String message;

  // Constructor for the Failure class to initialize the message.
  Failure(this.message);
}

// Subclass of Failure specifically for server-related failures.
class ServerFailure extends Failure {
  // Constructor for ServerFailure that passes the message to the base class.
  ServerFailure(super.message);

  // Factory constructor to create a ServerFailure instance based on DioException.
  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      // Handle connection timeout error.
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timed out. Please try again later.");
      // Handle send request timeout error.
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send request timed out. Please try again later.");
      // Handle receive request timeout error.
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            "Receive request timed out. Please try again later.");
      // Handle bad certificate error.
      case DioExceptionType.badCertificate:
        return ServerFailure(
            "Bad certificate. Please check your security settings.");
      // Handle bad response error by calling fromResponse factory.
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response?.statusCode, e.response?.statusMessage);
      // Handle request cancellation error.
      case DioExceptionType.cancel:
        return ServerFailure("Request was cancelled. Please try again.");
      // Handle connection error.
      case DioExceptionType.connectionError:
        return ServerFailure(
            "Connection error. Please check your internet connection.");
      // Handle unknown error.
      case DioExceptionType.unknown:
        return ServerFailure("An unknown error occurred: ${e.message}");
      // Handle any other unexpected errors.
      default:
        return ServerFailure("An unexpected error occurred.");
    }
  }

  // Factory constructor to create a ServerFailure instance based on HTTP response.
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    // Handle the case where status code is null.
    if (statusCode == null) {
      return ServerFailure("Received an invalid response with no details.");
    }
    // Handle specific HTTP status codes with custom messages.
    switch (statusCode) {
      case 400:
        return ServerFailure("Bad request: $response");
      case 401:
        return ServerFailure("Unauthorized: $response");
      case 403:
        return ServerFailure("Forbidden: $response");
      case 404:
        return ServerFailure("Not found: $response");
      case 500:
        return ServerFailure("Internal server error: $response");
      case 502:
        return ServerFailure("Bad gateway: $response");
      case 503:
        return ServerFailure("Service unavailable: $response");
      case 504:
        return ServerFailure("Gateway timeout: $response");
      // Handle any other status codes with a generic message.
      default:
        return ServerFailure(
            "Received an invalid response: $statusCode - $response");
    }
  }
}
