// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<String> items = [
    "All",
    "Mixes",
    "Security hackers",
    "News",
    "Music",
    "Computer Science",
    "Live",
    "African Music",
    "Public Speaking",
    "Indie Music",
    "Pop Music",
    "Comedy",
    "Cars",
    "Recentylly uploaded",
    "posts",
    "New To you",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(8.0),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: items.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: AnimatedContainer(
                        margin: EdgeInsets.all(5.0),
                        width: double.minPositive,
                        height: 45,
                        decoration: BoxDecoration(
                          color: current == index
                          ? Colors.black
                          :Colors.white54,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        duration: Duration(seconds: 3),
                        child: Text(
                          items[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: current == index
                            ? Colors.black
                            :Colors.white
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
