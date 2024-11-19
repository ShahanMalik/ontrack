import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/view/Home/plan/add_new_goal/widgets/custom_tile.dart';
import 'package:ontrack/view/Home/plan/add_new_goal/widgets/custom_tab_bar.dart';
import 'package:ontrack/view_model/home/plan/add_new_goal/custom_tabbar_provider.dart';

class AddNewGoal extends StatefulWidget {
  static const String routeName = 'onboarding';

  const AddNewGoal({Key? key}) : super(key: key);

  @override
  _AddNewGoalState createState() => _AddNewGoalState();
}

class _AddNewGoalState extends State<AddNewGoal> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: const [
                ColorResources.gradientColor,
                Colors.black,
                Colors.black,
                Colors.black,
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            CupertinoIcons.xmark,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Add New Goal',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'View available goals from Connected devices',
                              style: TextStyle(
                                color: Color.fromARGB(255, 182, 182, 193),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Consumer(builder: (context, ref, child) {
                                return SecondaryTabbar(onTabSelected: (index) {
                                  ref
                                      .read(selectedIndexProvider.notifier)
                                      .state = index;
                                });
                              }),
                              Consumer(builder: (context, ref, child) {
                                return IndexedStack(
                                  index: ref.watch(selectedIndexProvider),
                                  children: [
                                    ListView(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      // physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      children: [
                                        CustomTile(goal: "a", subtitle: 'a'),
                                        CustomTile(goal: "a", subtitle: 'a'),
                                      ],
                                    ),
                                    ListView(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      // physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      children: [
                                        CustomTile(goal: "as", subtitle: 'a'),
                                        CustomTile(goal: "ad", subtitle: 'a'),
                                      ],
                                    ),
                                    ListView(
                                      // physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      children: [
                                        CustomTile(
                                            goal: "addffvd", subtitle: 'a'),
                                        CustomTile(
                                            goal: "addvvf", subtitle: 'a'),
                                        CustomTile(
                                            goal: "addffvd", subtitle: 'a'),
                                      ],
                                    ),
                                    ListView(
                                      // physics: NeverScrollableScrollPhysics(),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      shrinkWrap: true,
                                      children: [
                                        CustomTile(goal: "a", subtitle: 'a'),
                                        CustomTile(goal: "a", subtitle: 'a'),
                                      ],
                                    ),
                                  ],
                                );
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
