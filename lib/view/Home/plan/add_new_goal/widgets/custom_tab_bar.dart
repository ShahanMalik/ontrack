import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';

import '../../../../../view_model/home/plan/add_new_goal/custom_tabbar_provider.dart';

class SecondaryTabbar extends ConsumerWidget {
  final ValueChanged<int> onTabSelected;

  const SecondaryTabbar({Key? key, required this.onTabSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    void _onTabTapped(int index) {
      ref.read(selectedIndexProvider.notifier).state = index;
      onTabSelected(index);
    }

    Widget _buildTab(String title, int index) {
      return Expanded(
        child: GestureDetector(
          onTap: () => _onTabTapped(index),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: selectedIndex == index
                  ? ColorResources.primaryColor
                  : Colors.transparent,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: ColorResources.white,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      // padding: EdgeInsets.only(right: 4),
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF292929),
      ),
      child: Row(
        children: [
          _buildTab('Exercise', 0),
          _buildTab('Nutrition', 1),
          _buildTab('Wellbeing', 2),
          _buildTab(' Body Comp ', 3),
        ],
      ),
    );
  }
}
