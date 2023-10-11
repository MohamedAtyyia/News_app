import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/manager/themcubit/cubit/them_app_cubit.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final themCubit = BlocProvider.of<ThemAppCubit>(context);

    return AppBar(
      iconTheme: const IconThemeData(),
      title: Text(
        'News App',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      actions: [
        IconButton(
          onPressed: () async {
            await themCubit.getThem();
          },
          icon: themCubit.themApp == true
              ? const Icon(
                  Icons.brightness_4_outlined,
                )
              : const Icon(
                  Icons.dark_mode_outlined,
                ),
        )
      ],
    );
  }
}
