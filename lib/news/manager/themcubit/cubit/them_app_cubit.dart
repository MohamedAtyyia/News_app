import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/shared_prefrence.dart';
import '../../../../util/app_const.dart';

part 'them_app_state.dart';

class ThemAppCubit extends Cubit<ThemAppState> {
  ThemAppCubit() : super(ThemAppInitial());
  bool themApp = false;
  Future<void> getThem({bool? themAppFromShared}) async {
   
    if (themAppFromShared != null) {
      themApp = themAppFromShared;
    } else {
      themApp = !themApp;
      MyChatSharedPrefrence.setData(key: AppConst.themAppsp, value: themApp);
      themApp == true ? emit(ThemAppLight()) : emit(ThemAppDark());
    }
  }
}
