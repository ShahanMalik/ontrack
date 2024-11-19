import 'package:flutter/material.dart';
import 'package:ontrack/view/Home/home/home_page_tile/home_page_tile.dart';
import 'package:ontrack/view/Home/admin_home_page/admin_home_page.dart';
import 'package:ontrack/view/Home/plan/setup_goal_complete/setup_goal_complete.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({super.key});

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dummy Page'),
        ),
        body: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SetupGoalComplete()));
          },
          child: Text('Dummy Page'),
        ));
  }
}
