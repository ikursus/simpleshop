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
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, "/");
                break;
              case 1:
                Navigator.pushNamed(context, "/orders");
                break;
              case 2:
                Navigator.pushNamed(context, "/myaccount");
                break;
            }
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(
                      context,
                      "/produk",
                      arguments: {
                        'title': 'T-Shirt 1',
                        'description': 'Content T-Shirt 1',
                      },
                    ),
                    child: Image.asset('images/tshirt1.jpg'),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                Container(
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(
                      context,
                      "/produk",
                      arguments: {
                        'title': 'T-Shirt 2',
                        'description': 'Content T-Shirt 2',
                      },
                    ),
                    child: Image.asset('images/tshirt2.jpg'),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                Container(
                  child: Image.asset('images/tshirt3.jpg'),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                Container(
                  child: Image.asset('images/tshirt4.jpg'),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                Container(
                  child: Image.asset('images/tshirt5.jpg'),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                Container(
                  child: Image.asset('images/tshirt6.jpg'),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String description;

  ScreenArguments(this.title, this.description);
}
