// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:youtubeclone/utils/colors.dart';
import 'package:youtubeclone/widgets/custom_scrollview_appbar.dart';
import 'package:youtubeclone/widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsContants.mainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomScrollViewAppbar(),
            Container(
              height: 360,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return VideoCard();
                },
              ),
            ),
            SizedBox(height: 2),
            Container(
              height: 70,
              //color: Colors.white,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/shorts.jpeg"
                    ),)
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
