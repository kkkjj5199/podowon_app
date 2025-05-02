import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podowon_church_app/features/setting/views/setting_tab_not_login.dart';
import '../../../themes/color.dart';
import '../../calendar/calendar_tab.dart';
import '../../worship/views/worship_tab.dart';
import 'home_tab.dart';


class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeTab(),
    const WorshipTab(),
    const CalendarTab(),
    const LoginPage()
    // const SettingTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _currentIndex = 0; // 홈으로 이동
      //     });
      //   },
      //   backgroundColor: PodowonColor.mainColor,
      //   child: Icon(Icons.home, color: Colors.white),
      //   shape: CircleBorder(),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: PodowonColor.mainColor,      // 선택된 아이템 색상 직접 지정
        unselectedItemColor: Colors.grey[500],               // 선택되지 않은 아이템 색상
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cross),
            label: '예배',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: '말씀',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '내 정보',
          ),
        ],
      ),
    );
  }
}
