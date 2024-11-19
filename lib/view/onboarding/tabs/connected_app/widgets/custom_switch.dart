import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ontrack/utils/color_resources.dart';

class CustomSwitch extends StatelessWidget {
  final bool switchValue;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({
    required this.switchValue,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: ColorResources.commonColor,
      child: ListTile(
        contentPadding: EdgeInsets.all(8),
        leading: Image.asset(
          'assets/images/background.png',
          height: 40,
        ),
        title: const Text(
          'Apple Health',
          style: TextStyle(
            color: ColorResources.white,
          ),
        ),
        trailing: Theme(
          data: ThemeData(useMaterial3: true),
          child: CupertinoSwitch(
            value: switchValue,
            activeColor: ColorResources.green,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
