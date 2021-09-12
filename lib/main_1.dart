import 'package:flutter/material.dart';

// Senarai icon https://api.flutter.dev/flutter/material/Icons-class.html
void main() {
  runApp(MyMainPage());
}

// arahan stful
class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
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
          currentIndex: 0,
          selectedItemColor: Colors.orange.shade900,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
        body: Center(
          child: Text(
            "Tab Index yang aktif : 1",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
