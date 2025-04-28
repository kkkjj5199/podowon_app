import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class HomeMenu extends ConsumerStatefulWidget {
  const HomeMenu({super.key});

  @override
  ConsumerState<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends ConsumerState<HomeMenu> {
 List<IconData> icons = [Icons.menu_book, Icons.assistant_navigation, Icons.calendar_month_sharp,
   Icons.person,Icons.yard_outlined, Icons.add_a_photo];
 List<String> titles = ['주보', '오시는 길' , '예배안내', '새가족 환영','포도원미디어','행사사진'];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 한 줄에 3개 (3열)
      shrinkWrap: true,
      childAspectRatio: 1.5,
      physics: NeverScrollableScrollPhysics(), // 스크롤 비활성화 (필요시)
      children: List.generate(6, (index) {
        return Container(
          height: 10,
          child: Column(
            children: [
              SizedBox(height: 15),
              Icon(icons[index], size: 30),
              Text(titles[index])
            ],
          )
        );
      }),
    );
  }
}
