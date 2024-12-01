import 'package:flutter/material.dart';
import 'package:flutter_proba1/screens/home.dart';
import 'package:flutter_proba1/screens/shop_details.dart';
import 'package:flutter_proba1/screens/shop_home.dart';
import 'screens/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(primarySwatch: Colors.grey),
      initialRoute: "/shop",
      routes: {
        "/": (context) => const Home(),
        "/details": (context) => const Details(),
        "/shop": (context) => const ShopHome(),
        "/shop/details": (context) => const ShopDetails(),
      },
    );
  }
}
