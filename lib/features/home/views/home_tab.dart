import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.topLeft,
          height: 80,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Image.asset('assets/images/top_logo.png'),
        ),
      ),
      body: const Center(child: Text('홈 화면')),
    );
  }
}
