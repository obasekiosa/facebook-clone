import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({Key key, this.icons, this.selectedIndex, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
          border: Border(
              top: BorderSide(
        color: Palette.facebookBlue,
        width: 2.5,
      ))),
      tabs: icons
          .asMap()
          .map(
            (index, icon) => MapEntry(
              index,
              Tab(
                icon: Icon(
                  icon,
                  color: selectedIndex == index
                      ? Palette.facebookBlue
                      : Colors.black54,
                  size: 25.0,
                ),
              ),
            ),
          )
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
