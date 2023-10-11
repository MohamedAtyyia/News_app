import 'package:get_it/get_it.dart';
import 'package:news_app/news/data/repo/home_repo_imple.dart';
import 'package:news_app/util/api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepoImple>(HomeRepoImple(ApiService()));

}
