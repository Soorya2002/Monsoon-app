import 'package:flutter/material.dart';
import 'package:monsoon/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFD9D9D9),
      ),
      home: HomeScreen(),
    ),
  );
}
