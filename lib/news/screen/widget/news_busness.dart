import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/manager/cubit/news_cubit.dart';

import 'custom_list_view.dart';


class NewsBusiness extends StatelessWidget {
  const NewsBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsFaiulre) {
          return Center(
            child: Text(
              state.errorMessage,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          );
        } else if (state is NewsSuccessfuly) {
          return  Center(child: CustomListView(newsModel: state.businessNews,));
        }else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}