import 'dart:async';

import 'package:flutter/material.dart';
import 'package:podowon_church_app/features/home/widgets/home_menu_card.dart';
import 'package:podowon_church_app/themes/color.dart';

class HomeTab extends StatefulWidget {
   const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
   final PageController _pageController = PageController();

   int _currentPage =0 ;

   late Timer _timer;

   final List<String> _images = [
     'assets/images/banner.jpg',
     'assets/images/banner2.jpg',
     'assets/images/banner3.jpg',
   ];

   @override
   void initState() {
     super.initState();
     _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
       if (_currentPage < _images.length - 1) {
         _currentPage++;
       } else {
         _currentPage = 0;
       }
       _pageController.animateToPage(
         _currentPage,
         duration: Duration(milliseconds: 500),
         curve: Curves.easeInOut,
       );
     });
   }

   @override
  void dispose() {
    // TODO: implement dispose
     _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          // color: Colors.white,
          alignment: Alignment.topLeft,
          height: 80,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Image.asset('assets/images/top_logo.png'),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  height: 200,
                  color: Colors.grey[300], // 배경색 예시
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _images.length,
                    itemBuilder: (context,index){
                      return Image.asset(_images[index], fit: BoxFit.cover,);
                    },
                    physics: const ClampingScrollPhysics(),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: HomeMenuCard(),
            )
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: PodowonColor.grey200,
              thickness: 5,
            ),
          ),
        ],
      ),
    );
  }
}
