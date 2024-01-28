import 'package:dartz/dartz.dart';
import 'package:test_massenger/core/error/failure.dart';
import 'package:test_massenger/features/main/data/data_source/remote_data_source/main_remote_data_source.dart';
import 'package:test_massenger/features/main/domain/entity/main_cahts_response_entity.dart';
import 'package:test_massenger/features/main/domain/repository/main_chats_repasitory.dart';

class MainChatsRepositoryImpl extends MainChatsRepository{
  final MainRemoteDataSource remoteDataSource;
  MainChatsRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, MainChatsResponseEntity>> getChats() async {
    // try{
      final response = await remoteDataSource.getChats();
      return Right(response.toEntity());
    // } catch(e){
    //   return Left(ServerFailure(message: e.toString()));
    // }
  }

}