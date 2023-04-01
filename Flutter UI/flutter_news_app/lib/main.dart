import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/screens.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/bottom_navigation_bar_custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  mBottomAppBar(),
    );
  }
}
// class BottomAppBar extends StatefulWidget {
//   const BottomAppBar({Key? key}) : super(key: key);
//
//   @override
//   State<BottomAppBar> createState() => _BottomAppBarState();
// }

// class _BottomAppBarState extends State<BottomAppBar> {
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   static final List<Widget> _widgetOptions = <Widget>[
//     const HomeScreen(),
//     const Text('aaa'),
//     const Text('bbb'),
//     const Text('ccc'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions[_selectedIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         elevation: 10,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset('assets/images/home.svg'), label: ''),
//           BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/images/note.svg'), label: ''),
//           BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/images/bell.svg'), label: ''),
//           BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/images/person.svg'), label: ''),
//         ],
//       ),
//     );
//   }
// }