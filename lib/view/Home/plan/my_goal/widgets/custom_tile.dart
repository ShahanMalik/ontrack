import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';

import '../../../../../view_model/home/plan/my_goal/custom_tile_provider.dart';

class CustomTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final int progress;

  CustomTile(
      {required this.title, required this.subtitle, required this.progress});

  @override
  _CustomTileState createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  bool _isExpanded = false;

  final TextStyle _titleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 19,
    fontWeight: FontWeight.w400,
  );

  final TextStyle _subtitleStyle = const TextStyle(
    color: ColorResources.mediumwhite,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final _isExpanded = ref.watch(isExpandedProvider(widget.title));
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: ColorResources.commonColor,
        child: Theme(
          data: ThemeData(
            unselectedWidgetColor: Colors.white,
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: _isExpanded ? 120 : 80, // Decreased the height of the tile
            child: ExpansionTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              leading: Image.asset(
                'assets/images/background.png',
                height: 40,
              ),
              title: Text(
                widget.title,
                style: _titleStyle,
              ),
              subtitle: Text(
                widget.subtitle,
                style: _subtitleStyle,
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
              onExpansionChanged: (bool expanded) {
                ref.read(isExpandedProvider(widget.title).notifier).state =
                    expanded;
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 18,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      minHeight: 8,
                      backgroundColor: ColorResources.lightWhite,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        ColorResources.green,
                      ),
                      value: widget.progress / 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
