import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final _baseUri = 'https://fakestoreapi.com/';
  ApiService(this._dio);
  Future<List<dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUri$endPoint');
    return response.data;
  }
}
