import 'package:flutter/material.dart';
import 'package:memory_assistant/HexColor.dart';

class SettingDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'header'.toUpperCase(),
              style: TextStyle(color: HexColor.fromHex('#e7d9dd')),
            ),
            decoration: BoxDecoration(
              color: HexColor.fromHex('#0ab67a')
            ),
          )
        ],
      ),
    );
  }
}