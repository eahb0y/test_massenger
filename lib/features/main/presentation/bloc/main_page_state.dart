part of 'main_page_bloc.dart';

class MainPageState extends Equatable{
  final MainChatsResponseEntity? mainChats;
  final bool isLoading;
  const MainPageState({this.mainChats, required this.isLoading});

  MainPageState copyWith({
    MainChatsResponseEntity? mainChats,
    bool? isLoading,
}){
    return MainPageState(
      mainChats: mainChats ?? this.mainChats,
      isLoading: isLoading ?? this.isLoading,
    );
  }
  @override
  List<Object?> get props => [mainChats, isLoading];

}

