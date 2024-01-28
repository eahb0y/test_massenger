part of 'main_page_bloc.dart';

sealed class MainPageEvent extends Equatable {
  const MainPageEvent();
}

class MainInitialCallEvent extends MainPageEvent {
  const MainInitialCallEvent();
  @override
  List<Object?> get props => [];
}
