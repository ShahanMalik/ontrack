import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/view_model/home/setup_step_goal/setup_step_goal_custom_tabbar/setup_step_goal_custom_tabbar_provider.dart';

class CustomTabbar extends ConsumerWidget {
  final ValueChanged<int> onTabSelected;

  const CustomTabbar({Key? key, required this.onTabSelected}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    void _onTabTapped(int index) {
      ref.read(selectedIndexProvider.notifier).update((state) => state = index);
      onTabSelected(index);
    }

    Widget _buildDivider(int index) {
      return VerticalDivider(
        width: 0,
        thickness: 0,
        indent: 8,
        endIndent: 8,
        color: selectedIndex == index - 1
            ? Colors.transparent
            : selectedIndex == index
                ? Colors.transparent
                : ColorResources.white,
      );
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
                  color: selectedIndex == index
                      ? Colors.black
                      : ColorResources.white,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Container(
        width: double.infinity,
        height: 30,
        // margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorResources.lightWhite,
        ),
        child: Row(
          children: [
            _buildTab('Greater then', 0),
            _buildDivider(1),
            _buildTab('Less then', 1),
            _buildDivider(2),
            _buildTab('Between', 2),
          ],
        ));
  }
}
