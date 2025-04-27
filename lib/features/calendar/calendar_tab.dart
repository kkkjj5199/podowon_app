import 'package:flutter/material.dart';

class CalendarTab extends StatelessWidget {
  const CalendarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('일정'),
      ),
      body: const Center(
        child: Text('일정 화면'),
      ),
    );
  }
}
