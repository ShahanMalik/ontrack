import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ontrack/utils/app_contants.dart';
import 'package:ontrack/utils/common_button.dart';
import 'package:ontrack/view/onboarding/onboarding_n.dart';

class OnboardingOne extends StatelessWidget {
  static const String routeName = '/onboarding_one';
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Image.asset(
                AppConstants.bgImage,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        'Welcome to onTrack',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Start by connecting your health apps and we will help you create a plan to reach your goals.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CommonButton(
                            onPressed: () {
                              context.goNamed(Onboarding.routeName);
                            },
                            text: "Next"),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
