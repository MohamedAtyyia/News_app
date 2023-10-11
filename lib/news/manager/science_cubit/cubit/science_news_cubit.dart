import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/news/data/model/news_model/news_model.dart';
import 'package:news_app/news/data/repo/home_repo_imple.dart';

part 'science_news_state.dart';

class ScienceNewsCubit extends Cubit<ScienceNewsState> {
  ScienceNewsCubit(this._homeRepoImple) : super(ScienceNewsInitial());
  final HomeRepoImple _homeRepoImple;

  Future<void> gethNewsScience({required String codeCountry}) async {
    // scienceNews.clear();
    emit(ScienceNewsIsLoading());
    var result = await _homeRepoImple.getNews(
        category: 'science', codeCountry: codeCountry);
    result.fold((l) => emit(ScienceNewsIsFailuer(erroMessage: l.erroMessage)),
        (r) {
      emit(ScienceNewsIsSuccessfuly(scienceNews: r));
    });
  }
}
