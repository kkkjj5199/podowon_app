import 'package:flutter/material.dart';
import 'package:podowon_church_app/themes/color.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: PodowonColor.white,
          title: Text('마이페이지', style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.w600),),
          bottom: TabBar(
            tabs: [
              Tab(text: '내 정보'),
              Tab(text: '말씀노트'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('홈 화면')),
            Center(child: Text('예배 화면')),
          ],
        ),
      ),
    );
  }
}
