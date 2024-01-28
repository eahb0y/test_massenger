import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_massenger/core/usecase/usecase.dart';
import 'package:test_massenger/features/main/domain/entity/main_cahts_response_entity.dart';
import 'package:test_massenger/features/main/domain/usecase/main_chats_usecase.dart';

part 'main_page_event.dart';

part 'main_page_state.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  final MainChatsUseCase mainChatsUseCase;

  MainPageBloc(this.mainChatsUseCase)
      : super(const MainPageState(isLoading: false)) {
    on<MainInitialCallEvent>(_mainChatsGet);
  }

  Future<void> _mainChatsGet(
      MainInitialCallEvent event, Emitter<MainPageState> emit) async {
    emit(state.copyWith(isLoading: true));
    var response = await mainChatsUseCase(NoParams());
    response.fold((l) {
      emit(state.copyWith(isLoading: false));
    }, (r) {
      emit(state.copyWith(
        mainChats: r,
        isLoading: false,
      ));
    });
  }
}
