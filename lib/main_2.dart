import 'package:flutter/material.dart';

// Senarai icon https://api.flutter.dev/flutter/material/Icons-class.html
void main() {
  runApp(MyMainPage());
}

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  // Variable untuk selected item di bottom bar
  int _selectedNavbar = 0;
  // Fungsi untuk update selected item di bottom bar
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade900,
          title: Text(
            'Simple Shop',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Account',
            ),
          ],
          // currentIndex: 0,
          currentIndex: _selectedNavbar,
          selectedItemColor: Colors.orange.shade900,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _changeSelectedNavBar,
        ),
        body: Center(
          child: Text(
            "Tab Index yang aktif : $_selectedNavbar",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
