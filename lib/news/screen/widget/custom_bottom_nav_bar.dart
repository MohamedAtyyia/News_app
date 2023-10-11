import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/manager/bottom_cubit/cubit/bottom_nav_bar_cubit.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: BlocProvider.of<BottomNavBarCubit>(context).currntIndex,
          onTap: (index) {
            BlocProvider.of<BottomNavBarCubit>(context)
                .changeScreen(index: index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports),
              label: 'Sports',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.science),
              label: 'Science',
            ),
          ],
        );
      },
    );
  }
}
