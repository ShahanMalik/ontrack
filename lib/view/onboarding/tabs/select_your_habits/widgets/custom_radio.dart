import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/view_model/onboarding/select_your_habits/select_your_habits_provider.dart';

class CustomRadio extends ConsumerWidget {
  final String goal;
  final String subtitle;
  final int index;

  CustomRadio(
      {required this.goal, required this.subtitle, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedGoal = ref.watch(selectyourhabitsProvider);
    return Container(
      alignment: Alignment.center,
      height: 80,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: ColorResources.commonColor,
        child: ListTile(
          contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 10),
          leading: Image.asset(
            'assets/images/background.png',
            height: 40,
          ),
          title: Text(
            goal,
            style: TextStyle(
              color: ColorResources.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorResources.mediumwhite,
            ),
          ),
          trailing: Theme(
            data: ThemeData(useMaterial3: true),
            child: RadioTheme(
              data: RadioThemeData(
                fillColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.selected)) {
                      return ColorResources.green;
                    }
                    return ColorResources.white;
                  },
                ),
              ),
              child: Radio(
                value: true,
                groupValue: selectedGoal[index],
                onChanged: (value) {
                  print('value: $value');
                  ref
                      .read(selectyourhabitsProvider.notifier)
                      .changeSelectYourHabits(index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
