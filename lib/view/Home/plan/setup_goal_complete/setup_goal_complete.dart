import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/utils/common_button.dart';
import 'package:ontrack/view/Home/plan/setup_goal_complete/widgets/custom_cotainer.dart';
import 'package:ontrack/view/Home/plan/setup_goal_complete/widgets/custom_tabbar.dart';
import 'package:ontrack/view_model/home/plan/setup_goal_complete/lower_limit_provider.dart';
import 'package:ontrack/view_model/home/plan/setup_goal_complete/upper_limit_provider.dart';

import '../../../../view_model/home/plan/setup_goal_complete/switch_provider.dart';

class SetupGoalComplete extends StatefulWidget {
  const SetupGoalComplete({super.key});

  @override
  State<SetupGoalComplete> createState() => _SetupGoalCompleteState();
}

class _SetupGoalCompleteState extends State<SetupGoalComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorResources.gradientColor,
              Colors.black,
              Colors.black,
              Colors.black,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: ColorResources.white,
                        size: 30,
                      ),
                    )),
                Expanded(
                    flex: 9,
                    child: ListView(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      shrinkWrap: true,
                      children: [
                        Text(
                          'Set Calorie Goal',
                          style: TextStyle(
                              color: ColorResources.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Control which apps can access data stored in health connect. Tap an app to review its permissions.',
                          style: TextStyle(
                            color: ColorResources.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Calories Consumed',
                            style: TextStyle(
                              color: ColorResources.mediumwhite,
                              fontSize: 16,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          child: Card(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: ColorResources.lightWhite,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.0,
                                vertical: 2.0,
                              ),
                              child: ExpansionTile(
                                iconColor: ColorResources.lightWhite,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                collapsedIconColor: ColorResources.lightWhite,
                                backgroundColor: Colors.black,
                                title: Text(
                                  'Set Step',
                                  style: TextStyle(
                                    color: ColorResources.white,
                                  ),
                                ),
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      "data",
                                      style: TextStyle(
                                        color: ColorResources.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Text(
                            "Every",
                            style: TextStyle(
                              color: ColorResources.mediumwhite,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        CustomTabbar(
                          onTabSelected: (value) {},
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Consumer(builder: (context, ref, child) {
                              final state = ref.watch(lowerLimitProvider);

                              return Expanded(
                                flex: 2,
                                child: FractionallySizedBox(
                                  widthFactor: 0.9,
                                  child: CustomContainer(
                                    title: "Lower Limit",
                                    increment: () {
                                      ref
                                          .read(lowerLimitProvider.notifier)
                                          .increment();
                                    },
                                    decrement: () {
                                      ref
                                          .read(lowerLimitProvider.notifier)
                                          .decrement();
                                    },
                                    value: state.toString(),
                                  ),
                                ),
                              );
                            }),
                            Consumer(builder: (context, ref, child) {
                              final state = ref.watch(upperLimitProvider);

                              return Expanded(
                                flex: 2,
                                child: FractionallySizedBox(
                                  widthFactor: 0.9,
                                  child: CustomContainer(
                                    title: "Lower Limit",
                                    increment: () {
                                      ref
                                          .read(upperLimitProvider.notifier)
                                          .increment();
                                    },
                                    decrement: () {
                                      ref
                                          .read(upperLimitProvider.notifier)
                                          .decrement();
                                    },
                                    value: state.toString(),
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Goal Alert",
                            style: TextStyle(
                              color: ColorResources.mediumwhite,
                              fontSize: 14,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Consumer(builder: (context, ref, child) {
                            return CupertinoSwitch(
                              value: ref.watch(switchProvider),
                              onChanged: (value) {
                                ref.read(switchProvider.notifier).state = value;
                              },
                              activeColor: ColorResources.green,
                            );
                          }),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Recommendation!",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: ColorResources.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Daily Sleep Recommendation: 9hrs\n\nSetting a daily sleep goal is beneficial for several reasons, contributing to both physical and mental well-being. Firstly, it promotes a more active lifestyle, encouraging individuals to incorporate regular physical activity into their daily routine.Achieving a step goal can enhance cardiovascular health, aid in weight management, and boost overall fitness.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: ColorResources.mediumwhite,
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CommonButton(onPressed: () {}, text: "Save Goal"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
