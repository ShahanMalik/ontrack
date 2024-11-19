import 'package:flutter_riverpod/flutter_riverpod.dart';

final goalMetricProvider =
    StateNotifierProvider<GoalMetricNotifier, int>((ref) {
  return GoalMetricNotifier();
});

class GoalMetricNotifier extends StateNotifier<int> {
  GoalMetricNotifier() : super(18);

  void incrementGoalMetric() {
    state++;
  }

  void decrementGoalMetric() {
    if (state > 0) {
      state--;
    }
  }
}
