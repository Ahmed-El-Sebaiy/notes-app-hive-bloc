import 'package:flutter/material.dart';
import 'package:notes_app_hive_db/views/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon}) : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}

