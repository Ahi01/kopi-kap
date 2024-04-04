import 'package:flutter/material.dart';
import 'package:test_1/community/community_page/widgets/like_comm_push.dart';
import 'package:test_1/community/community_people/community_people.dart';
import 'package:test_1/community/widgets/custom_text_button.dart';
import 'package:test_1/community/widgets/customm_button.dart';
import 'package:test_1/community/widgets/menu_category.dart';
import 'package:test_1/const.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<Map<String, dynamic>> list = [
    {'image': Images.i1, 'name': 'Маникюр'},
    {'image': Images.i2, 'name': 'Педикюр'},
    {'image': Images.i3, 'name': 'Брови'},
    {'image': Images.i4, 'name': 'Ресницы'},
    {'image': Images.i5, 'name': 'Стрижка'},
  ];

  late List<Map<String, dynamic>> sortedArtists;

  @override
  void initState() {
    sortedArtists = list;
    super.initState();
  }

  List<Map<String, dynamic>> selectedArtists = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Сообщество',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              Images.settings,
              width: 26,
              height: 26,
            ),
          ),
          const SizedBox(width: 16),
          const SizedBox(
            width: 18,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ColoredBox(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 23),
              Row(
                children: [
                  Image.asset(Images.lak),
                  const SizedBox(width: 20),
                  const Column(
                    children: [
                      Text('23'),
                      SizedBox(height: 5),
                      Text('Публикации'),
                    ],
                  ),
                  const SizedBox(width: 22),
                  const Column(
                    children: [
                      Text('23'),
                      SizedBox(height: 5),
                      Text('Участников'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Комьюнити'),
              const SizedBox(height: 12),
              const Text(
                  'Всем привет, мы публикуем самые трендовые и красивые дизайны для твоего маникюра!'),
              const SizedBox(height: 16),
              SizedBox(
                height: 85,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 7,
                    mainAxisExtent: 90,
                  ),
                  itemBuilder: (context, index) => MenuCategory(
                    name: sortedArtists[index]['name']!,
                    path: sortedArtists[index]['image']!,
                    onTap: () {},
                    selected: selectedArtists.contains(sortedArtists[index]),
                  ),
                  itemCount: sortedArtists.length,
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(
                text: 'Создать чат',
                style: const TextStyle(color: Colors.white),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CommunityPeople())),
                fixedSize: const Size(double.maxFinite, 47),
                color: AppColors.purple,
              ),
              const SizedBox(height: 30),
              CTextButton(
                icon: Icons.add_circle_outline_outlined,
                text: 'Опубликовать',
                onTap: () {},
                color: AppColors.pigC,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Images.lak,
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Комьюнити', style: TextStyle(fontSize: 16)),
                          Text(
                            '22 мар в 08:39',
                            style: TextStyle(
                                fontSize: 14, color: AppColors.textGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.more_horiz),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Нет ничего более удивительного, чем мастерство маникюриста, который обладает умением превратить обычные ногти в истинные произведения искусства. Моя цель - не просто ухаживать за ногтями, но и придавать им индивидуальность, отражающую ваш стиль и характер.',
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  LikeCommPush(
                    image: Images.favorites,
                  ),
                  SizedBox(width: 10),
                  LikeCommPush(
                    image: Images.comment,
                  ),
                  SizedBox(width: 10),
                  LikeCommPush(
                    image: Images.right,
                  ),
                  // TextButton.icon(
                  //   style: ButtonStyle(
                  //       shape: MaterialStateProperty.all(
                  //         RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //       ),
                  //       backgroundColor:
                  //           MaterialStateProperty.all(AppColors.colorFiel)),
                  //   onPressed: _increment,
                  //   icon: Image.asset(
                  //     'assets/images/favorites.png',
                  //     color: AppColors.textGrey,
                  //     width: 20,
                  //     height: 20,
                  //   ),
                  //   label: Text(
                  //     '$_counter',
                  //     style: const TextStyle(color: AppColors.textGrey),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
