import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/utils/common_button.dart';
import 'package:ontrack/view/onboarding/tabs/setup_bio/widgets/custom_container.dart';
import 'package:ontrack/view_model/onboarding/bio/age_provider.dart';
import 'package:ontrack/view_model/onboarding/bio/gender_provider.dart';
import 'package:ontrack/view_model/onboarding/bio/height_provider.dart';
import 'package:ontrack/view_model/onboarding/bio/time_zone_provider.dart';

class SetupBio extends ConsumerWidget {
  const SetupBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Setup your Bio',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: ColorResources.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Setup your bio We use this data to provide personalised recommendations on your goals and fitness routines.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12,
                  color: ColorResources.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
              Consumer(builder: (context, ref, child) {
                return CustomContainer(
                  title: "My Age",
                  value: ref.watch(ageProvider).toString(),
                  increment: () =>
                      ref.read(ageProvider.notifier).incrementAge(),
                  decrement: () =>
                      ref.read(ageProvider.notifier).decrementAge(),
                );
              }),
              SizedBox(height: 15),
              Consumer(builder: (context, ref, child) {
                return CustomContainer(
                  title: "Gender",
                  value: ref.watch(genderProvider).toString(),
                  increment: () =>
                      ref.read(genderProvider.notifier).changeGender(),
                  decrement: () =>
                      ref.read(genderProvider.notifier).changeGender(),
                );
              }),
              SizedBox(height: 15),
              Consumer(builder: (context, ref, child) {
                return CustomContainer(
                  title: "My Height",
                  value: ref.watch(heightProvider).toString(),
                  increment: () =>
                      ref.read(heightProvider.notifier).incrementHeight(),
                  decrement: () =>
                      ref..read(heightProvider.notifier).decrementHeight(),
                );
              }),
              SizedBox(height: 15),
              Consumer(builder: (context, ref, child) {
                return CustomContainer(
                  title: "Time Zone",
                  value: ref.watch(timeZoneProvider).toString(),
                  increment: () =>
                      ref.read(timeZoneProvider.notifier).increaseTimeZone(),
                  decrement: () =>
                      ref.read(timeZoneProvider.notifier).decreaseTimeZone(),
                );
              }),
            ],
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CommonButton(
                onPressed: () {
                  // ref.read(pageProvider.notifier).setPage(2);
                  // context.goNamed(Onboarding.routeName);
                },
                text: "Next"),
          ),
        ],
      ),
    );
  }
}
