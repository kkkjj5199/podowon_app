import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/announcements_viewmodel.dart';
import '../widgets/announcement_card.dart';

class WorshipPage extends ConsumerWidget {
  const WorshipPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final worship = ref.watch(worshipViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('예배'),
      ),
      body: ListView.builder(
        itemCount: worship.length,
        itemBuilder: (context, index) {
          return AnnouncementCard(
            announcement: worship[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: 새 예배 추가 기능 구현
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
