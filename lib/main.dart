import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/manager/themcubit/cubit/them_app_cubit.dart';
import 'package:news_app/shared/shared_prefrence.dart';
import 'package:news_app/them/dark_them.dart';
import 'package:news_app/them/light_them.dart';
import 'package:news_app/util/api_service.dart';
import 'package:news_app/util/app_const.dart';
import 'package:news_app/util/app_router.dart';
import 'package:news_app/util/bloc_observ.dart';
import 'package:news_app/util/service_locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = const AppBlocObserver();
setup();
 await MyChatSharedPrefrence.init();
  ApiService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ThemAppCubit()
          ..getThem(
            themAppFromShared: MyChatSharedPrefrence.get(AppConst.themAppsp),
          ),
        child: BlocBuilder<ThemAppCubit, ThemAppState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: lightMode(),
              darkTheme: darkMode(),
              themeMode: BlocProvider.of<ThemAppCubit>(context).themApp == true
                  ? ThemeMode.light
                  : ThemeMode.dark,
              onGenerateRoute: AppRouter.generatRouter,
            );
          },
        ));
  }
}
