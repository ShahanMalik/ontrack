import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/utils/common_button.dart';
import 'package:ontrack/view/onboarding/tabs/setup_your_plain/widgets/custom_container.dart';
import 'package:ontrack/view_model/onboarding/setup_your_plan/goal_measure_provider.dart';
import 'package:ontrack/view_model/onboarding/setup_your_plan/goal_metric_provider.dart';
import 'package:ontrack/view_model/onboarding/setup_your_plan/plan_name_provider.dart';
import 'package:ontrack/view_model/onboarding/setup_your_plan/switch_provider.dart';

class SetupYourPlain extends ConsumerStatefulWidget {
  const SetupYourPlain({super.key});

  @override
  ConsumerState<SetupYourPlain> createState() => _SetupBioState();
}

class _SetupBioState extends ConsumerState<SetupYourPlain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Setup your plan',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: ColorResources.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Control which app can access data stored in health connect. Tap an app to review its permission.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorResources.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30),
                CustomContainer(
                  text: "Plan Name",
                  value: ref.watch(planNameProvider),
                  onIncrement: () =>
                      ref.read(planNameProvider.notifier).incrementPlanName(),
                  onDecrement: () =>
                      ref.read(planNameProvider.notifier).decrementPlanName(),
                ),
                SizedBox(height: 20),
                CustomContainer(
                  text: "Goal Measure",
                  value: ref.watch(goalMeasureProvider),
                  onIncrement: () => ref
                      .read(goalMeasureProvider.notifier)
                      .incrementGoalMeasure(),
                  onDecrement: () => ref
                      .read(goalMeasureProvider.notifier)
                      .decrementGoalMeasure(),
                ),
                SizedBox(height: 20),
                CustomContainer(
                  text: "Goal Metric",
                  value: ref.watch(goalMetricProvider).toString(),
                  onIncrement: () => ref
                      .read(goalMetricProvider.notifier)
                      .incrementGoalMetric(),
                  onDecrement: () => ref
                      .read(goalMetricProvider.notifier)
                      .decrementGoalMetric(),
                ),
                SizedBox(height: 20),
                Text(
                  'Weekly Goal Recomentations?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorResources.lightWhite,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Consumer(builder: (context, ref, child) {
                    return Theme(
                      data: ThemeData(useMaterial3: true),
                      child: CupertinoSwitch(
                        value: ref.watch(switchIndexProvider),
                        activeColor: ColorResources.green,
                        onChanged: (value) => {
                          ref.read(switchIndexProvider.notifier).state = value,
                        },
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          // Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CommonButton(onPressed: () {}, text: "Next"),
          ),
        ],
      ),
    );
  }
}
