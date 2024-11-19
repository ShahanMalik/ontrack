import 'package:flutter_riverpod/flutter_riverpod.dart';

final lowerLimitProvider =
    StateNotifierProvider<LowerLimitNotifierr, int>((ref) {
  return LowerLimitNotifierr();
});

class LowerLimitNotifierr extends StateNotifier<int> {
  LowerLimitNotifierr() : super(2000);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
