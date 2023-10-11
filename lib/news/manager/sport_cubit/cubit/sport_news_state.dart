part of 'sport_news_cubit.dart';

sealed class SportNewsState extends Equatable {
  const SportNewsState();

  @override
  List<Object> get props => [];
}


final class SportNewsInitial extends SportNewsState {}

final class SportNewsIsLoading extends SportNewsState {}

final class SportNewsIsFailuer extends SportNewsState {
  final String erroMessage;

const  SportNewsIsFailuer({required this.erroMessage});
}

final class SportNewsIsSuccessfuly extends SportNewsState {
  final List<NewsModel>sportNews;

const  SportNewsIsSuccessfuly({required this.sportNews});
}
