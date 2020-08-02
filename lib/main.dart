import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:memory_assistant/setting.dart';

import 'hexcolor.dart';

void main() {
  runApp(new MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: HexColor.fromHex('#0ab67a')
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter', style: TextStyle(color: HexColor.fromHex('#e7d9dd'))),
        ),
        drawer: SettingDrawer(),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}
