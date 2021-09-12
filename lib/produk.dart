import 'package:flutter/material.dart';

class MyProdukPage extends StatelessWidget {
  const MyProdukPage(Object? args, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade900,
          title: Text(
            'Produk T-Shirt',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali'),
          ),
        ),
      ),
    );
  }
}
