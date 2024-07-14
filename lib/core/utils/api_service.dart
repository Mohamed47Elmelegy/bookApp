import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/'; //baseUrl
  ApiService(
    this._dio,
  );
  //Fuction To Get Data From Api
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var respons = await _dio.get('$baseUrl$endPoint');
    return respons.data;
  }
}
