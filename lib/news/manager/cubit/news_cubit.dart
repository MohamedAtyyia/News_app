import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/news/data/model/news_model/news_model.dart';
import 'package:news_app/news/data/repo/home_repo_imple.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final HomeRepoImple _homeRepoImple;
  NewsCubit(this._homeRepoImple) : super(NewsInitial());
  Future<void> gethNewsBuseniss({required String codeCountry}) async {
;    emit(NewsLoading());
    var result = await _homeRepoImple.getNews(
        category: 'business', codeCountry: codeCountry);
    result.fold((l) => emit(NewsFaiulre(l.erroMessage)), (r) {
      emit(NewsSuccessfuly(businessNews: r));
    });
  }


  

}
