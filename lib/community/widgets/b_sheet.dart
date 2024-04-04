import 'package:flutter/material.dart';
import 'package:test_1/community/create_community/create_community_widget.dart';
import 'package:test_1/community/widgets/customm_button.dart';
import 'package:test_1/const.dart';

class BottomSh extends StatelessWidget {
  const BottomSh({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Категория',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.colorFiel)),
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              )
            ],
          ),
          CustomButton(
            fixedSize: const Size(double.maxFinite, 47),
            text: 'Создать сообщество',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateCommunityWidget(),
                ),
              );
            },
            color: AppColors.purple,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
