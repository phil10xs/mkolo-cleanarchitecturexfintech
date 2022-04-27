import 'package:dartz/dartz.dart';
import 'package:mobile_assesment/core/failure/failure.dart';
import 'package:mobile_assesment/core/usecases/usecases.dart';
import 'package:mobile_assesment/features/dashboard/domain/repository/repo.dart';

class GetDataUsecase extends Usecase<void, NoParams> {
  GetDataUsecase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Failure, List<Map<String, dynamic>>>> call(
          NoParams params) async =>
      await repository.getData();
}
