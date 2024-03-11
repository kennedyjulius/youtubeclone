// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:youtubeclone/screens/home/home_screen.dart';
import 'package:youtubeclone/widgets/custom_scrollview_appbar.dart';
// Import other screen widgets as needed

class CustomTabBarMenu extends StatefulWidget {
  const CustomTabBarMenu({Key? key});

  @override
  State<CustomTabBarMenu> createState() => _CustomTabBarMenuState();
}

class _CustomTabBarMenuState extends State<CustomTabBarMenu> {
  List<Widget> tabContents = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    //EntertainmentScreen(),
    // Add other screen widgets as needed
  ];

  final List<String> tabTitles = [
    "Gaming",
    "Entertainment",
    "Technology",
    "Finance",
    "Computer Science",
    "News",
    "Economy",
    "Technology"
    "Entertainment"
    // Add other tab titles here
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: CustomScrollViewAppbar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Your tab bar code here
          
          //CustomScrollViewAppbar(),
          Container(
            color: Colors.black,
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 12),
            width: double.infinity,
            child: ListView(
              
              scrollDirection: Axis.horizontal,
              children: List.generate(
                tabTitles.length,
                (index) => Container(
                  //color: Colors.black,
                  margin: EdgeInsets.only(right: 8, left: 5.0),
                  child: FilterChip(
                    showCheckmark: false,
                    //color: MaterialStatePropertyAll(Colors.black),
                    //color: Color(value),
                    //color: MaterialStatePropertyAll(Colors.black),
                     backgroundColor: _currentIndex == index ? Colors.white : Colors.black54,
                    //backgroundColor: Colors.black,
                    selectedColor: Colors.white,
                    elevation: 0,
                    label: Text(
                      tabTitles[index],
                      style: TextStyle(
                        color: _currentIndex == index ? Colors.black : Colors.white,
                      ),
                    ),
                    onSelected: (value) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    selected: _currentIndex == index,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: tabContents[_currentIndex],
          ),
        ],
      ),
    );
  }
}
