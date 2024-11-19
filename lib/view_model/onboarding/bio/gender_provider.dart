import 'package:flutter_riverpod/flutter_riverpod.dart';

final genderProvider = StateNotifierProvider<GenderNotifier, String>((ref) {
  return GenderNotifier();
});

List<String> gender = ["Male", "Female"];

class GenderNotifier extends StateNotifier<String> {
  GenderNotifier() : super("Male");
  void changeGender() {
    if (state == gender.last) {
      state = gender.first;
    } else {
      state = gender.last;
    }
  }
}
