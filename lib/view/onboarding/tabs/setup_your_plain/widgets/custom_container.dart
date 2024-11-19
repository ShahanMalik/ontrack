import 'package:flutter/material.dart';
import 'package:ontrack/utils/color_resources.dart';

class CustomContainer extends StatelessWidget {
  final String value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final String text;

  CustomContainer({
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text.toString(),
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: ColorResources.mediumwhite,
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
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorResources.white,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                (text == "Goal Metric")
                    ? Text(
                        "%",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorResources.white,
                        ),
                      )
                    : SizedBox.shrink(),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: onIncrement,
                      child: Icon(
                        Icons.arrow_drop_up,
                        size: 18,
                        color: ColorResources.white,
                      ),
                    ),
                    InkWell(
                      onTap: onDecrement,
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
      ],
    );
  }
}
