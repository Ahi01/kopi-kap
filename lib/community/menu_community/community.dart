import 'package:flutter/material.dart';
import 'package:test_1/community/widgets/b_sheet.dart';
import 'package:test_1/community/widgets/category_widget.dart';
import 'package:test_1/community/widgets/customm_button.dart';
import 'package:test_1/community/widgets/text_field.dart';
import 'package:test_1/const.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => _buildSheet(),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildSheet() {
    return const BottomSh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 18),
          child: CircleAvatar(
            radius: 26,
          ),
        ),
        title: const Text(
          'Сообщество',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          Image.asset(
            Images.add,
            width: 26,
            height: 26,
          ),
          const SizedBox(width: 16),
          Image.asset(
            Images.message,
            width: 26,
            height: 26,
          ),
          const SizedBox(
            width: 18,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const CustomTextField(
              maxLines: 1,
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.textGrey,
              ),
              hintText: 'Поиск сообщества',
              padding: EdgeInsets.only(left: 20, top: 9, bottom: 20, right: 9),
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                CategoryWidget(text: 'Мои сообщества'),
                SizedBox(width: 12),
                CategoryWidget(text: 'Категория'),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  style: const TextStyle(color: AppColors.textGrey),
                  color: AppColors.colorFiel,
                  fixedSize: const Size(double.infinity, 40),
                  text: 'Все сообщества',
                  onTap: _showBottomSheet,
                ),
                const SizedBox(width: 10),
                CustomButton(
                  style: const TextStyle(color: AppColors.textGrey),
                  color: AppColors.colorFiel,
                  fixedSize: const Size(double.infinity, 40),
                  text: 'Управляемые',
                  onTap: _showBottomSheet,
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, int i) => const CListTitle(
                  image: Images.lak,
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CListTitle extends StatelessWidget {
  const CListTitle({
    super.key,
    required this.image,
    this.size,
    this.trailing,
  });
  final String image;
  final Size? size;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        // clipBehavior: Clip.hardEdge,
        child: Image.asset(
          image,
          width: 50,
          height: 50,
        ),
      ),
      title: const Text(
        'Nasya',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      subtitle: const Text(
        'с 12.02.2024',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.textGrey),
      ),
      onTap: () {},
    );
  }
}
