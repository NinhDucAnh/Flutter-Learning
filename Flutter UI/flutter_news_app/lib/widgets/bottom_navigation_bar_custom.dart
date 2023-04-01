import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/home_screen.dart';
import 'package:flutter_svg/svg.dart';
class mBottomAppBar extends StatefulWidget {
  const mBottomAppBar({Key? key}) : super(key: key);

  @override
  State<mBottomAppBar> createState() => _mBottomAppBarState();
}

class _mBottomAppBarState extends State<mBottomAppBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text('aaa'),
    const Text('bbb'),
    const Text('ccc'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/home.svg'),label: '' ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/note.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bell.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/person.svg'), label: ''),
        ],
      ),
    );
  }
}
