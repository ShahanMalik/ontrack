import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/utils/common_button.dart';
import 'package:ontrack/view/onboarding/tabs/select_your_plan/widgets/custom_radio.dart';

class SelectYourPlan extends ConsumerStatefulWidget {
  const SelectYourPlan({super.key});

  @override
  ConsumerState<SelectYourPlan> createState() => _SetupBioState();
}

class _SetupBioState extends ConsumerState<SelectYourPlan> {
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
                    'Select your Plan',
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
                  child: Text('Preset Plan',
                      style: TextStyle(
                        fontSize: 15,
                        color: ColorResources.white,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                SizedBox(height: 10),
                CustomRadio(
                    goal: 'Get Stronger',
                    subtitle: 'Improve weightlifting performance',
                    index: 0),
                CustomRadio(
                    goal: 'Cut Down',
                    subtitle: 'Lose 200g bodyfat a week',
                    index: 1),
                CustomRadio(
                    goal: 'Bulk Up',
                    subtitle: 'Gain 200g muscle a week',
                    index: 2),
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
                    goal: 'Everyday Wellbeing',
                    subtitle: '2000 Calories in a week',
                    index: 3),
                CustomRadio(
                    goal: 'Marathon Prep',
                    subtitle: 'Run 40km in a day',
                    index: 4),
                CustomRadio(
                    goal: 'Get Fit for Summer',
                    subtitle: 'Get to 14% Bodyfat',
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
