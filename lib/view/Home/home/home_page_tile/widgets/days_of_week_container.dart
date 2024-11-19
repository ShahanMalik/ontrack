import 'package:flutter/material.dart';
import 'package:ontrack/utils/color_resources.dart';

class DayOfWeekContainer extends StatelessWidget {
  final String day;
  final bool isSelected;

  const DayOfWeekContainer({
    super.key,
    required this.day,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? ColorResources.primaryColor : Colors.transparent,
        ),
        child: Column(
          children: [
            Text(
              (day == 'Su') ? 'S' : day,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: 0.5,
                  // color: ColorResources.green,
                  backgroundColor: ColorResources.commonColor,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    ColorResources.green,
                  ),
                  strokeWidth: 3.0,
                ),
                Text(
                  '50',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
