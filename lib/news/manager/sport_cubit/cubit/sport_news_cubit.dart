import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/news/data/model/news_model/news_model.dart';
import 'package:news_app/news/data/repo/home_repo_imple.dart';

part 'sport_news_state.dart';

class SportNewsCubit extends Cubit<SportNewsState> {
  SportNewsCubit(this._homeRepoImple) : super(SportNewsInitial());
  final HomeRepoImple _homeRepoImple;

  Future<void> gethNewsSports({required String codeCountry}) async {
    emit(SportNewsIsLoading());
    var result = await _homeRepoImple.getNews(
        category: 'sports', codeCountry: codeCountry);
    result.fold((l) => emit(SportNewsIsFailuer(erroMessage: l.erroMessage)),
        (r) {
      emit(SportNewsIsSuccessfuly(sportNews: r));
    });
  }
}
