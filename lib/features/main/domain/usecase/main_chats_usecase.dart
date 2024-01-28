import 'package:dartz/dartz.dart';
import 'package:test_massenger/core/error/failure.dart';
import 'package:test_massenger/core/usecase/usecase.dart';
import 'package:test_massenger/features/main/domain/entity/main_cahts_response_entity.dart';
import 'package:test_massenger/features/main/domain/repository/main_chats_repasitory.dart';

class MainChatsUseCase extends UseCase<MainChatsResponseEntity, NoParams> {
  final MainChatsRepository repository;

  MainChatsUseCase(this.repository);

  @override
  Future<Either<Failure, MainChatsResponseEntity>> call(NoParams params) {
    final response = repository.getChats();
    return response;
  }
}
