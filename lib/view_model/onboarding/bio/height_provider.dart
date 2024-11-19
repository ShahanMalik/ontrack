import 'package:flutter_riverpod/flutter_riverpod.dart';

final heightProvider = StateNotifierProvider<HeightProvider, int>((ref) {
  return HeightProvider();
});

class HeightProvider extends StateNotifier<int> {
  HeightProvider() : super(150);

  void incrementHeight() {
    state++;
  }

  void decrementHeight() {
    state--;
  }
}
