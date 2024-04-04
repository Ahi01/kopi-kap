import 'package:flutter/material.dart';
import 'package:test_1/const.dart';

class LikeCommPush extends StatelessWidget {
  const LikeCommPush({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.colorFiel),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 20,
            height: 20,
            color: AppColors.textGrey,
          ),
          const SizedBox(width: 8),
          const Text(
            '255',
            style: TextStyle(fontSize: 14, color: AppColors.textGrey),
          )
        ],
      ),
    );
  }
}
