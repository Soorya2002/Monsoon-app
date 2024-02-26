import 'package:flutter/material.dart';
import 'package:monsoon/widgets/image_row.dart';
import 'package:monsoon/widgets/navigation_bar.dart';

// import 'package:monsoon/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight + 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 370,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const ImageRow(
                image1: 'assets/image36.png',
                image2: 'assets/Rectangle35.png',
                image3: 'assets/image36.png'),
            const ImageRow(
                image1: 'assets/image36.png',
                image2: 'assets/Rectangle35.png',
                image3: 'assets/image36.png'),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/Rectangle 34.png',
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 370,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Advt. Banner here..!',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const ImageRow(
                image1: 'assets/image36.png',
                image2: 'assets/Rectangle35.png',
                image3: 'assets/image36.png'),
            const ImageRow(
                image1: 'assets/image36.png',
                image2: 'assets/Rectangle35.png',
                image3: 'assets/image36.png'),
            const ImageRow(
                image1: 'assets/image36.png',
                image2: 'assets/Rectangle35.png',
                image3: 'assets/image36.png'),
          ],
        ),
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
