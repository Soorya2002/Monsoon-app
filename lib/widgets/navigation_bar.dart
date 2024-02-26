import 'package:flutter/material.dart';
import 'package:monsoon/screens/favorites.dart';
import 'package:monsoon/screens/home_screen.dart';
import 'package:monsoon/screens/search_screen.dart';
import 'package:monsoon/screens/user_screen.dart';

class NavigationBarWidget extends StatelessWidget {
  final int initialIndex;
  final ValueChanged<int>? onTabChanged;

  const NavigationBarWidget({
    super.key,
    this.initialIndex = 0,
    this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      // decoration: BoxDecoration(
      // borderRadius: BorderRadius.all(
      //   Radius.circular(24),
      // ),
      // color: Colors.white,
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.1),
      //     blurRadius: 10,
      //     offset: Offset(0, -5),
      //   ),
      // ],

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Image.asset('assets/Home.png')),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
                  child: Image.asset('assets/Search.png')),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritesScreen()));
                  },
                  child: Image.asset('assets/Love.png')),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserScreen()));
                  },
                  child: Image.asset('assets/User.png')),
              label: 'Profile',
            ),
          ],
          currentIndex: initialIndex,
          onTap: onTabChanged,
        ),
      ),
    );
  }
}
