import 'package:flutter/material.dart';
import 'package:simpleshop/homepage.dart';
import 'package:simpleshop/orders.dart';
import 'package:simpleshop/myaccount.dart';
import 'package:simpleshop/produk.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyMainPage());
      case '/orders':
        return MaterialPageRoute(builder: (_) => MyOrderPage());
      case '/myaccount':
        return MaterialPageRoute(builder: (_) => MyAccountPage());
      case '/produk':
        return MaterialPageRoute(builder: (_) => MyProdukPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
