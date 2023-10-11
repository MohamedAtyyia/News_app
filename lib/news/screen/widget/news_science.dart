import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/manager/science_cubit/cubit/science_news_cubit.dart';
import 'package:news_app/news/screen/widget/custom_list_view.dart';

class NewsScience extends StatelessWidget {
  const NewsScience({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScienceNewsCubit, ScienceNewsState>(
      builder: (context, state) {
        if (state is ScienceNewsIsFailuer) {
          return Center(
            child: Text(
              state.erroMessage,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          );
        } else if (state is ScienceNewsIsSuccessfuly) {
          return Center(child: CustomListView(newsModel: state.scienceNews));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
