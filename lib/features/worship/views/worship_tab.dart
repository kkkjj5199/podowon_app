import 'package:flutter/material.dart';

class WorshipTab extends StatelessWidget {
  const WorshipTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('예배'),
      ),
      body: const Center(
        child: Text('예배 화면'),
      ),
    );
  }
}
