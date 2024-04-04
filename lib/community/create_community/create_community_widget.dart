import 'package:flutter/material.dart';
import 'package:test_1/community/community_page/community_main/community_main_screen.dart';
import 'package:test_1/community/widgets/custom_text_button.dart';
import 'package:test_1/community/widgets/text_field.dart';
import 'package:test_1/const.dart';

class CreateCommunityWidget extends StatelessWidget {
  const CreateCommunityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Создать Сообщество',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text(
              'Название сообщество',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.textGrey,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: 'Придумайте название',
              maxLines: 1,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
            ),
            const SizedBox(height: 15),
            const Text(
              'Выберите категорию',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.textGrey,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Выберите категорию',
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 9,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.expand_more),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Установите аватар',
              style: TextStyle(
                color: AppColors.textGrey,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            const CircleAvatar(
              maxRadius: 50,
            ),
            const SizedBox(height: 10),
            CTextButton(
              text: '+ Выбрать фото',
              onTap: () {},
            ),
            const SizedBox(height: 15),
            const Text(
              'Описание',
              style: TextStyle(
                color: AppColors.textGrey,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: 'Расскажите о сообществе',
              maxLines: 4,
              minLines: 4,
              padding: EdgeInsets.only(
                left: 14,
                right: 20,
                bottom: 14,
                top: 14,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Используйте слова, которые описывают тематику сообщества и помогают быстрее его найти. Изменить описание можно в любой момент.',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textGrey),
            ),
            const SizedBox(height: 50),
            CTextButton(
              text: 'Создать сообщество',
              color: AppColors.purple,
              style: const TextStyle(color: Colors.white),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CommunityScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
