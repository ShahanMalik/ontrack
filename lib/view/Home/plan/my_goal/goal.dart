import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/utils/common_button.dart';
import 'package:ontrack/view/Home/plan/add_new_goal/add_new_goal.dart';
import 'package:ontrack/view/Home/plan/my_goal/widgets/custom_tile.dart';

class MyGoal extends ConsumerStatefulWidget {
  const MyGoal({super.key});

  @override
  ConsumerState<MyGoal> createState() => _SetupBioState();
}

class _SetupBioState extends ConsumerState<MyGoal> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'My Plan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Healthy Habits make a healthy people',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/background.png'),
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomTile(
                      title: 'Gym',
                      subtitle: '3x in a week',
                      progress: 40,
                    ),
                    CustomTile(
                      title: 'Sleep',
                      subtitle: "8hrs a day",
                      progress: 40,
                    ),
                    CustomTile(
                      title: 'Calories',
                      subtitle: "2000 Calories in a week",
                      progress: 40,
                    ),
                    CustomTile(
                      title: 'Protein',
                      subtitle: '130g Protein in a day',
                      progress: 40,
                    ),
                    CustomTile(
                      title: 'Weight Loss',
                      subtitle: "10k steps a day",
                      progress: 40,
                    ),
                    CustomTile(
                      title: 'Muscle Mass',
                      subtitle: '200g week',
                      progress: 40,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                child: CommonButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AddNewGoal();
                      }));
                    },
                    text: "Add New Goal"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
