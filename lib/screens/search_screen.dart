import 'package:flutter/material.dart';
import 'package:monsoon/widgets/navigation_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 23, right: 20),
            child: Container(
              width: 370,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color.fromARGB(45, 0, 0, 0),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search here...',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(66, 0, 0, 0),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              right: 250,
            ),
            child: Text(
              'Recent Searches',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/Time Machine.png",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Taj Avante Mumbai   ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/Time Machine.png",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Taj Avante Mumbai   ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/Time Machine.png",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Taj Avante Mumbai   ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 260,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Clear Recent Searches',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
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
