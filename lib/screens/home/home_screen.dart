// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/utils/colors.dart';
import 'package:youtubeclone/widgets/custom_scrollview_appbar.dart';

import 'package:youtubeclone/widgets/video_card.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> videoIds = [
    'L4MWKGstaHk',
    'OjCVx8i2PCA',
    'pctSfB88hj0',
    'umhl2hakkcY'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsContants.mainBackgroundColor,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomScrollViewAppbar(),
                SizedBox(
                height: 360,
                
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: VideoCard(),
                )
                 
                ),             
              SizedBox(height: 5), // Adjust the spacing as needed
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/shorts2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Shorts",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5), // Adjust the spacing as needed
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: //CustomShortsCard()
              

                SizedBox(
                height: 360,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  //scrollDirection: NeverScrollableScrollPhysics(),
                  itemCount: 5, // Update this if needed
                  itemBuilder: (context, index) {
                    return VideoCard();
                  },
                ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
