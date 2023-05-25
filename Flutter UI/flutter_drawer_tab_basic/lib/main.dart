import 'package:flutter/material.dart';
import 'package:flutter_drawer_tab_basic/camera_screen.dart';
import 'package:flutter_drawer_tab_basic/home_screen.dart';
import 'package:flutter_drawer_tab_basic/settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home' :(context) => const HomeScreen(),
        'camera': (context) => const CameraScreen(),
        'settings': (context) => const SettingsScreen(),
      },
    );
  }
}
