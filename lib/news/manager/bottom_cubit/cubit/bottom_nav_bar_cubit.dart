import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../util/app_const.dart';
import '../../../screen/widget/news_busness.dart';
import '../../../screen/widget/news_science.dart';
import '../../../screen/widget/sports_news.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  int currntIndex = 0;
  String category = 'business';
  List<Widget> screen = [
    const NewsBusiness(),
    const NewsSport(),
    const NewsScience(),
  ];
  void changeScreen({required int index}) {
    category = AppConst.allCategry[index];
    currntIndex = index;
    _emitState(index);
  }

  void _emitState(int index) {
    if (index == 0) {
      emit(FirestScreen());
    } else if (index == 1) {
      emit(SecondeScreen());
    } else {
      emit(ThierdScreen());
    }
  }
}
