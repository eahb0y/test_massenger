import 'package:test_massenger/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:test_massenger/features/main/domain/entity/main_cahts_response_entity.dart';

abstract class MainChatsRepository{
  Future<Either<Failure, MainChatsResponseEntity>> getChats();
}