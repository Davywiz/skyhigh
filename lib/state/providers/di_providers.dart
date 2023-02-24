import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skyhigh/data/data_source/remote_data_source.dart';
import 'package:skyhigh/data/network/dio_factory.dart';
import 'package:skyhigh/data/repository/repository.dart';

final dioProvider = Provider<DioFactory>((ref) {
  return DioFactory();
});

final remoteDataSourceProvider = FutureProvider<RemoteDataSource>((ref) async {
  final dio = ref.watch(dioProvider);
  final getDio = await dio.getDio();

  return RemoteDataSource(getDio);
});

final repositoryProvider = Provider<Repository>((ref) {
  late final RemoteDataSource dataSource;
  final dataSources = ref.watch(remoteDataSourceProvider);

  dataSources.whenData((value) {
    dataSource = value;
  });
  return Repository(dataSource);
});
