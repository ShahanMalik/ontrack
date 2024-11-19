import 'package:flutter_riverpod/flutter_riverpod.dart';

final isActive = List<bool>.filled(6, false);

final selectYourPlanProvider =
    StateNotifierProvider<SelectYourPlanNotifier, List<bool>>((ref) {
  return SelectYourPlanNotifier();
});

class SelectYourPlanNotifier extends StateNotifier<List<bool>> {
  SelectYourPlanNotifier() : super([...isActive]);

  void changeSelectYourPlan(int index) {
    state = [
      for (var i = 0; i < state.length; i++)
        if (i == index) !state[i] else state[i],
    ];
    print(state);
  }
}
