import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/home_model.dart';

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, List<HomeModel>>((ref) {
  return HomeViewModel();
});

class HomeViewModel extends StateNotifier<List<HomeModel>> {
  HomeViewModel() : super([]);

  void addItem(HomeModel item) {
    state = [...state, item];
  }

  void removeItem(int index) {
    state = List.from(state)..removeAt(index);
  }
}
