import 'package:flutter_riverpod/flutter_riverpod.dart';

final goalMeasureProvider =
    StateNotifierProvider<GoalMeasureNotifier, String>((ref) {
  return GoalMeasureNotifier();
});

class GoalMeasureNotifier extends StateNotifier<String> {
  List<String> goal = [
    "Bodyfat percentage 1",
    "Bodyfat percentage 2",
    "Bodyfat percentage 3",
    "Bodyfat percentage 4",
  ];

  GoalMeasureNotifier() : super('Bodyfat percentage1');

  void incrementGoalMeasure() {
    if (state == goal.last) {
      state = goal.first;
    } else {
      state = goal[goal.indexOf(state) + 1];
    }
  }

  void decrementGoalMeasure() {
    if (state == goal.first) {
      state = goal.last;
    } else {
      state = goal[goal.indexOf(state) - 1];
    }
  }
}
