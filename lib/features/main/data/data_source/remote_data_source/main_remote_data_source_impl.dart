import 'package:test_massenger/constants/constants.dart';
import 'package:test_massenger/core/local_sourse/local_source.dart';
import 'package:test_massenger/features/main/data/model/main_chats_response.dart';
import 'package:test_massenger/features/main/data/model/test_response.dart';
import 'package:test_massenger/injection_container.dart';

import 'main_remote_data_source.dart';

class MainRemoteDataSourceImpl extends MainRemoteDataSource {
  MainRemoteDataSourceImpl();
  @override
  Future<TestResponse> getChats() async {
    try {
      final response = await Constants.base
          // .where("sender", isEqualTo: sl<LocalSource>().getUserName())
          // .where("sender_num", isEqualTo: sl<LocalSource>().getPhoneNum())
          .get();
      if (response.docs.isNotEmpty) {
        return TestResponse.fromJson(response.docs);
      }
      throw MainChatsResponse.fromJson(response);
    } catch (e) {
      throw e.toString();
    }
  }
}
