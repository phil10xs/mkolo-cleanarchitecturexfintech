import 'package:dio/dio.dart';

abstract class RemoteDatasource {
  Future<List<Map<String, dynamic>>> getData();
}

class RemoteDatasourceImpl extends RemoteDatasource {
  RemoteDatasourceImpl({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<List<Map<String, dynamic>>> getData() async {
    var response = await dio.get(
      'https://random-data-api.com/api/users/random_user?size=10',
    );

    return response.data;
  }
}
