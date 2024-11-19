import 'package:flutter_riverpod/flutter_riverpod.dart';

final upperLimitProvider =
    StateNotifierProvider<UpperLimitNotifier, int>((ref) {
  return UpperLimitNotifier();
});

class UpperLimitNotifier extends StateNotifier<int> {
  UpperLimitNotifier() : super(2500);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
