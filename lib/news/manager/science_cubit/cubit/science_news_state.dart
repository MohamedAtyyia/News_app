part of 'science_news_cubit.dart';

sealed class ScienceNewsState extends Equatable {
  const ScienceNewsState();

  @override
  List<Object> get props => [];
}


final class ScienceNewsInitial extends ScienceNewsState {}
final class ScienceNewsIsLoading extends ScienceNewsState {}
final class ScienceNewsIsFailuer extends ScienceNewsState {
  final String erroMessage;

const  ScienceNewsIsFailuer({required this.erroMessage});
}
final class ScienceNewsIsSuccessfuly extends ScienceNewsState {
  final List<NewsModel>scienceNews;

const  ScienceNewsIsSuccessfuly({required this.scienceNews});
}
