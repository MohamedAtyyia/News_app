import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/manager/sport_cubit/cubit/sport_news_cubit.dart';
import 'package:news_app/news/screen/widget/custom_list_view.dart';

class NewsSport extends StatelessWidget {
  const NewsSport({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SportNewsCubit, SportNewsState>(
      builder: (context, state) {
        if (state is SportNewsIsFailuer) {
          return Center(
            child: Text(
              state.erroMessage,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          );
        } else if (state is SportNewsIsSuccessfuly) {
          return  Center(child: CustomListView(newsModel: state.sportNews));
        }else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}