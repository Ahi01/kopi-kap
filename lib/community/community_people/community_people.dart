import 'package:flutter/material.dart';
import 'package:test_1/community/menu_community/community.dart';
import 'package:test_1/community/widgets/text_field.dart';
import 'package:test_1/const.dart';

class CommunityPeople extends StatelessWidget {
  const CommunityPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Участники сообщества',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 22),
            const CustomTextField(
              hintText: 'Поиск',
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 9,
                bottom: 9,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.textGrey,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, int i) => CListTitle(
                  image: Images.person,
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(10, 19),
                        backgroundColor: Colors.black
                        ),
                    onPressed: () {},
                    child: const Text('Подписаться'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
