import 'package:flutter_riverpod/flutter_riverpod.dart';

final heightTypeProvider =
    StateNotifierProvider<HeightTypeProvider, String>((ref) {
  return HeightTypeProvider();
});

List<String> heightType = ['CM', 'FT'];

class HeightTypeProvider extends StateNotifier<String> {
  HeightTypeProvider() : super('CM');

  void changeHeightType(String type) {
    state = type;
  }
}
