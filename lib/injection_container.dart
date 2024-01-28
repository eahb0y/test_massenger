import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_massenger/core/local_sourse/local_source.dart';
import 'package:test_massenger/features/main/data/data_source/remote_data_source/main_remote_data_source_impl.dart';
import 'package:test_massenger/features/main/data/repository/main_chats_repository_impl.dart';
import 'package:test_massenger/features/main/domain/usecase/main_chats_usecase.dart';

import 'features/main/data/data_source/remote_data_source/main_remote_data_source.dart';
import 'features/main/domain/repository/main_chats_repasitory.dart';
import 'features/main/presentation/bloc/main_page_bloc.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;


Future<void> init()async {
  await initHive();
  sl.registerSingleton<LocalSource>(LocalSource(_box));
  _mainPage();
}

Future<void> initHive() async{
const box = "test_masanger";
Directory directory = await getApplicationDocumentsDirectory();
Hive.init(directory.path);
_box = await Hive.openBox<dynamic>(box);
}


void _mainPage(){
sl.registerFactory(() => MainPageBloc(sl()));
///useCase
sl.registerLazySingleton<MainChatsUseCase>(() => MainChatsUseCase(sl()));
///Repositories
  sl.registerLazySingleton<MainChatsRepository>(() => MainChatsRepositoryImpl(sl()));
  ///data
  sl.registerLazySingleton<MainRemoteDataSource>(() => MainRemoteDataSourceImpl());
}