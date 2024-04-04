import 'package:flutter/material.dart';
import 'package:test_1/const.dart';

class CategoryWidget extends StatelessWidget {
  final String text;
  const CategoryWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.colorFiel),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
            const Icon((Icons.arrow_drop_down))
          ],
        ),
      ),
    );
  }
}
