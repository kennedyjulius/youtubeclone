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
          //crossAxisAlignment: CrossAxisAlignment.,
          children: [
            const CustomScrollViewAppbar(),
            Container(
              height: 370,
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return VideoCard();
                },
              ),
            ),
            SizedBox(height: 2), // Add some spacing
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/shorts.jpeg"
                        ),
                        fit: BoxFit.cover
                        ),
                  ),
                ),
                //Expanded(child: Container())
              ],
            ),
            SizedBox(height: 10), // Add some spacing
            // Expanded(
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 20),
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 10,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           margin: EdgeInsets.only(right: 10),
            //           width: 120,
            //           color: Colors.white,
            //           child: Center(
            //             child: Text(
            //               'Short $index',
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
