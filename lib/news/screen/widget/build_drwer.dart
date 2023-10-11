import 'package:flutter/material.dart';

import 'list_view_drawer.dart';

class BuildDrawr extends StatelessWidget {
  const BuildDrawr({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Text(
                    'Name Country',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            const CustomListViewDrawr(),
          ],
        ),
      ),
    );
  }
}
