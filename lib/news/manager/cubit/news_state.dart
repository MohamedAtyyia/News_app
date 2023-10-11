part of 'news_cubit.dart';

sealed class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsFaiulre extends NewsState {
  final String errorMessage;

  const NewsFaiulre(this.errorMessage);
}

final class NewsSuccessfuly extends NewsState {
final List<NewsModel>businessNews;

const  NewsSuccessfuly({required this.businessNews});
}
