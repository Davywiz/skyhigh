import 'package:dio/dio.dart';
import 'package:skyhigh/data/requests/requests.dart';

class RemoteDataSource {
  final Dio dio;
  RemoteDataSource(this.dio);
  Future<Response<dynamic>> getData(SentRequest sentData) {
    final result = dio.post('/DEV/stub', data: sentData.toMap());

    return result;
  }
}
