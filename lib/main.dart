import 'package:flutter/material.dart';
import 'package:simpleshop/route.dart';

// Senarai icon https://api.flutter.dev/flutter/material/Icons-class.html
void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
