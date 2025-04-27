import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/worship_model.dart';

final worshipViewModelProvider =
    StateNotifierProvider<AnnouncementsViewModel, List<AnnouncementModel>>(
        (ref) {
  return AnnouncementsViewModel();
});

class AnnouncementsViewModel extends StateNotifier<List<AnnouncementModel>> {
  AnnouncementsViewModel() : super([]);

  void addAnnouncement(AnnouncementModel announcement) {
    state = [...state, announcement];
  }

  void removeAnnouncement(int index) {
    state = List.from(state)..removeAt(index);
  }
}
