import 'package:flutter/material.dart';
import 'package:sneakershop/models/cart.dart';
import 'package:sneakershop/pages/intropage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false, home: Intropage()),
    );
  }
}
