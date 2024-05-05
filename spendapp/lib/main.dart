import 'package:flutter/material.dart';
import 'package:spendapp/design/colors.dart';
import 'package:spendapp/pages/expenses_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spend Wise',
      debugShowCheckedModeBanner: false,
      theme: 
        ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor,
      ),
      home: const HomePage(),
    );
  }
}

