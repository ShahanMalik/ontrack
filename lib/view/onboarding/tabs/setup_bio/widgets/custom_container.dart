import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/view/onboarding/tabs/setup_bio/widgets/drop_down_button.dart';

class CustomContainer extends ConsumerWidget {
  final String title;
  final String value;
  final Function increment;
  final Function decrement;

  CustomContainer({
    required this.title,
    required this.value,
    required this.increment,
    required this.decrement,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: ColorResources.mediumwhite,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: ColorResources.lightWhite, width: 0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: (title == "My Height")
                ? EdgeInsets.only(right: 10.0)
                : EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                (title == "My Height")
                    ? DropdownButtonExample()
                    : SizedBox.shrink(),
                (title == "My Height")
                    ? SizedBox(width: 10)
                    : SizedBox.shrink(),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorResources.white,
                  ),
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () => increment(),
                      child: Icon(
                        Icons.arrow_drop_up,
                        size: 18,
                        color: ColorResources.white,
                      ),
                    ),
                    InkWell(
                      onTap: () => decrement(),
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 18,
                        color: ColorResources.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
