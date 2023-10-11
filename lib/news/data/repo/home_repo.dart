import 'package:dartz/dartz.dart';
import 'package:news_app/news/data/model/news_model/news_model.dart';
import 'package:news_app/util/error.dart';

abstract class HomeRepo{
  Future<Either<Failuer,List<NewsModel>>>getNews({required String category,required String codeCountry});
}