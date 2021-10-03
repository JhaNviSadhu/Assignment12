import 'package:assignment_12/BottomNavigationBar/tab1.dart';
import 'package:assignment_12/BottomNavigationBar/tab2.dart';
import 'package:assignment_12/constant.dart';
import 'package:flutter/material.dart';

class MybottomNavigationBar extends StatefulWidget {
  const MybottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MybottomNavigationBarState createState() => _MybottomNavigationBarState();
}

class _MybottomNavigationBarState extends State<MybottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _list = [
    const Tab1(),
    const Tab2(),
  ];

  void _ontap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBottonNavigationBar(),
      appBar: AppBar(
        backgroundColor: themecolor,
        title: const Text("Food"),
      ),
      body: _list.elementAt(_selectedIndex),
    );
  }

  BottomNavigationBar myBottonNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 1,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      selectedItemColor: themecolor,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: _ontap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 35,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.grid_on,
            size: 35,
          ),
          label: 'Grid',
        ),
      ],
    );
  }
}
