import 'package:flutter_riverpod/flutter_riverpod.dart';

final ageProvider = StateNotifierProvider<AgeProvider, int>((ref) {
  return AgeProvider();
});

class AgeProvider extends StateNotifier<int> {
  AgeProvider() : super(18);

  void incrementAge() {
    state++;
  }

  void decrementAge() {
    state--;
  }
}
