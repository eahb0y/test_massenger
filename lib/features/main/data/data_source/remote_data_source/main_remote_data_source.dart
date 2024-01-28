import 'package:test_massenger/features/main/data/model/main_chats_response.dart';
import 'package:test_massenger/features/main/data/model/test_response.dart';

abstract class MainRemoteDataSource{
  Future<TestResponse> getChats();
}