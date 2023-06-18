import 'package:flutter/material.dart';
import 'businessOwner_homepage.dart';

class BottomNavigationBarExample extends StatefulWidget {
  static const String routeName = 'BottomNavigationBarExample';

  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'screen 1',
      style: optionStyle,
    ),
    BusinessOwnerHomepage(),
    Text(
      'screen 3',
      style: optionStyle,
    ),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: _selectedIndex == 0
                  ? ColorFilter.mode(
                  Color.fromRGBO(252, 84, 72, 1), BlendMode.color)
                  : ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
              child: Image.asset(
                'assets/images/b2.jpg',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: _selectedIndex == 1
                  ? ColorFilter.mode(
                  Color.fromRGBO(252, 84, 72, 1), BlendMode.color)
                  : ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
              child: Image.asset(
                'assets/images/b3.jpg',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: _selectedIndex == 2
                  ? ColorFilter.mode(
                  Color.fromRGBO(252, 84, 72, 1), BlendMode.color)
                  : ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
              child: Image.asset(
                'assets/images/b5.jpg',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Notification',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(252, 84, 72, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
