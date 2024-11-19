import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';

class CustomTile extends ConsumerWidget {
  final String goal;
  final String subtitle;

  CustomTile({required this.goal, required this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
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
              fontSize: 19,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: ColorResources.white,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
          trailing: Theme(
            data: ThemeData(
              useMaterial3: true,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Edit',
                style: TextStyle(
                  color: Color.fromARGB(255, 69, 139, 219),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(79, 33, 131, 170),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
