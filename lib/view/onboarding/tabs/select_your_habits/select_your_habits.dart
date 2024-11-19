import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/utils/common_button.dart';
import 'package:ontrack/view/onboarding/tabs/select_your_habits/widgets/custom_radio.dart';

class SelectYourHabits extends ConsumerStatefulWidget {
  const SelectYourHabits({super.key});

  @override
  ConsumerState<SelectYourHabits> createState() => _SetupBioState();
}

class _SetupBioState extends ConsumerState<SelectYourHabits> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Select your habits',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: ColorResources.white,
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'You can adjust these leter.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12,
                      color: ColorResources.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Recommended based on your goal',
                      style: TextStyle(
                        fontSize: 15,
                        color: ColorResources.white,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                SizedBox(height: 10),
                CustomRadio(goal: 'Gym', subtitle: '3x in a week', index: 0),
                CustomRadio(
                    goal: 'Protein',
                    subtitle: '130g Protein in a day',
                    index: 1),
                CustomRadio(
                    goal: 'Muscle Mass', subtitle: '200g week', index: 2),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Choose other',
                      style: TextStyle(
                        fontSize: 15,
                        color: ColorResources.white,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                SizedBox(height: 10),
                CustomRadio(
                    goal: 'Step tracker',
                    subtitle: '10k steps a day',
                    index: 3),
                CustomRadio(goal: 'Sleep', subtitle: '8hrs a day', index: 4),
                CustomRadio(
                    goal: 'Calories',
                    subtitle: '22000 Calories in a week',
                    index: 5),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CommonButton(onPressed: () {}, text: "Next"),
          ),
        ],
      ),
    );
  }
}
