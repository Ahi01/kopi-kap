import 'package:flutter/material.dart';
import 'package:test_1/const.dart';

class MenuCategory extends StatelessWidget {
  const MenuCategory(
      {super.key,
      required this.name,
      required this.path,
      required this.onTap,
      this.selected = false});
  final String path;
  final String name;
  final Function onTap;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.purple),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.24),
            child: Image.asset(
              path,
              width: 30,
              height: 30,
              color: AppColors.purple,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
