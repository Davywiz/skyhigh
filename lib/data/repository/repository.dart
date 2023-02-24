import 'package:skyhigh/data/mapper/mapper.dart';
import 'package:skyhigh/data/response/responses.dart';
import 'package:skyhigh/models/product.dart';

import '../data_source/remote_data_source.dart';
import '../requests/requests.dart';

class Repository {
  final RemoteDataSource remoteDataSource;
  const Repository(this.remoteDataSource);

  Future<List<Product>> getData() async {
    const loginData = SentRequest();
    try {
      final result = await remoteDataSource.getData(loginData);
      final data = ListProductResponse.fromMap(result.data);
      return data.toDomain();
    } catch (error) {
      print(error);
      rethrow;
    }
  }
}
