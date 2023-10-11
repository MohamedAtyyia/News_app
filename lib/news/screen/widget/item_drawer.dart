import 'package:flutter/material.dart';

class ItemDrawer extends StatelessWidget {
  const ItemDrawer({
    super.key,
    required this.nameCountry,
  });
  final String nameCountry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(
            nameCountry,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        
        ),
        const Divider(
          thickness: .5,
        )
      ],
    );
  }
}
