import 'package:dartz/dartz.dart';
import 'package:mobile_assesment/core/failure/failure.dart';

abstract class Repository {
  Future<Either<Failure, List<Map<String, dynamic>>>> getData();
}
