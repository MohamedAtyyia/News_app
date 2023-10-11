import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/manager/science_cubit/cubit/science_news_cubit.dart';
import 'package:news_app/news/manager/sport_cubit/cubit/sport_news_cubit.dart';

import '../../../util/app_const.dart';
import '../../manager/cubit/news_cubit.dart';
import 'item_drawer.dart';

class CustomListViewDrawr extends StatelessWidget {
  const CustomListViewDrawr({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppConst.nameCountry.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.pop(context);
         BlocProvider.of<NewsCubit>(context).gethNewsBuseniss(codeCountry: AppConst.allcodeCountry[index]);
          BlocProvider.of<ScienceNewsCubit>(context).gethNewsScience(codeCountry: AppConst.allcodeCountry[index]);
          BlocProvider.of<SportNewsCubit>(context).gethNewsSports(codeCountry: AppConst.allcodeCountry[index]);
         
        },
        child: ItemDrawer(
          nameCountry: AppConst.nameCountry[index],
        ),
      ),
    );
  }
}