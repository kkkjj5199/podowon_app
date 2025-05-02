import 'package:flutter/material.dart';

class WorshipTab extends StatelessWidget {
  const WorshipTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.yellow,
        title: const Text('예배'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 500, color: Colors.red),
            Container(height: 500, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
