import 'package:flutter/material.dart';
import 'package:monsoon/widgets/image_row.dart';
import 'package:monsoon/widgets/navigation_bar.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(
            left: 30,
          ),
          child: Text(
            'My Favourites',
            style: TextStyle(
              color: Color.fromARGB(255, 86, 4, 95),
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: const Column(
        children: [
          ImageRow(
              image1: 'assets/image36.png',
              image2: 'assets/Rectangle35.png',
              image3: 'assets/image36.png'),
          ImageRow(
              image1: 'assets/Rectangle35.png',
              image2: 'assets/Rectangle35.png',
              image3: 'assets/image36.png'),
          ImageRow(
              image1: 'assets/image36.png',
              image2: 'assets/image36.png',
              image3: 'assets/image36.png'),
          ImageRow(
              image1: 'assets/Rectangle35.png',
              image2: 'assets/image36.png',
              image3: 'assets/image36.png'),
        ],
      ),
      bottomNavigationBar: NavigationBarWidget(
        initialIndex: _selectedIndex,
        onTabChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
