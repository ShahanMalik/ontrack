import 'package:flutter_riverpod/flutter_riverpod.dart';

final planNameProvider = StateNotifierProvider<PlanNameNotifier, String>((ref) {
  return PlanNameNotifier();
});

class PlanNameNotifier extends StateNotifier<String> {
  List<String> plan = [
    'Get fit for summer',
    'Get fit for winter',
    'Get fit for 1',
    'Get fit for 2',
  ];

  PlanNameNotifier() : super('Get fit for summer');

  void incrementPlanName() {
    if (state == plan.last) {
      state = plan.first;
    } else {
      state = plan[plan.indexOf(state) + 1];
    }
  }

  void decrementPlanName() {
    if (state == plan.first) {
      state = plan.last;
    } else {
      state = plan[plan.indexOf(state) - 1];
    }
  }
}
