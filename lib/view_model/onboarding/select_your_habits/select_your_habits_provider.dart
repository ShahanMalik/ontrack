import 'package:flutter_riverpod/flutter_riverpod.dart';

final isActive = List<bool>.filled(6, false);

final selectyourhabitsProvider =
    StateNotifierProvider<SelectyourhabitsNotifier, List<bool>>((ref) {
  return SelectyourhabitsNotifier();
});

class SelectyourhabitsNotifier extends StateNotifier<List<bool>> {
  SelectyourhabitsNotifier() : super([...isActive]);

  void changeSelectYourHabits(int index) {
    state = [
      for (var i = 0; i < state.length; i++)
        if (i == index) !state[i] else state[i],
    ];
    print(state);
  }
}
