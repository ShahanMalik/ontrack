import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/utils/common_button.dart';
import 'package:ontrack/view_model/onboarding/connected_app/connected_provider.dart';
import 'widgets/custom_switch.dart';

class ConnectedApp extends ConsumerStatefulWidget {
  const ConnectedApp({Key? key}) : super(key: key);

  @override
  ConsumerState<ConnectedApp> createState() => _SetupBioState();
}

class _SetupBioState extends ConsumerState<ConnectedApp> {
  @override
  Widget build(BuildContext context) {
    final switchValues = ref.watch(switchProvider);
    final switchNotifier = ref.read(switchProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Connected Apps',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: ColorResources.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Control which app can access data stored in health connect. Tap an app to review its permission.',
            style: TextStyle(
              fontSize: 12,
              color: ColorResources.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
                itemCount: switchValues.length,
                itemBuilder: (context, index) {
                  return CustomSwitch(
                    switchValue: switchValues[index],
                    onChanged: (value) {
                      switchNotifier.updateSwitch(index, value);
                    },
                  );
                }),
          ),
          // Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CommonButton(
              onPressed: () {},
              text: "Next",
            ),
          ),
        ],
      ),
    );
  }
}
