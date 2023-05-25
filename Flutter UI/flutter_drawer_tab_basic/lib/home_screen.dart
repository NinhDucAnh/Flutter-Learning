import 'package:flutter/material.dart';
import 'package:flutter_drawer_tab_basic/side_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Home'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                child: Text('Home'),
              ),
              Tab(
                icon: Icon(Icons.camera),
                child: Text('Camera'),
              ),
              Tab(
                icon: Icon(Icons.settings),
                child: Text('Settings'),
              ),
            ],
          ),
        ),
        drawer: const SideDrawer(),
        body: const Center(child: Text('Home'),),
      ),
    );
  }
}

