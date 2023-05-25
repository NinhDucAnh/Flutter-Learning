import 'package:flutter/material.dart';
import 'package:flutter_drawer_tab_basic/side_drawer.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Camera'),),
      drawer: const SideDrawer(),
      body: const Center(child: Text('Camera'),),
    );
  }
}
