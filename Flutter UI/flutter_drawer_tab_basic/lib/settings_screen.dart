import 'package:flutter/material.dart';
import 'package:flutter_drawer_tab_basic/side_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings'),),
      drawer: SideDrawer(),
      body: Center(child: Text('Settings'),),
    );
  }
}
