// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/utils/colors.dart';
import 'package:youtubeclone/widgets/custom_scrollview_appbar.dart';
import 'package:youtubeclone/widgets/video_card.dart';
import 'package:youtubeclone/widgets/youtube_player_custom.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //CustomScrollViewAppbar(),
            SizedBox(
              height: 360,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: videoIds.length,
                itemBuilder: (context, index) {
                  final videoId = videoIds[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: VideoCard(videoId: videoId),
                  );
                },
              ),
            ),
            SizedBox(height: 5),
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
            SizedBox(height: 5),
            //overlappingContainers(),
          ],
        ),
      ),
    );
  }

  // Stack overlappingContainers() {
  //   return Stack(
  //           children: [
  //             Positioned(
  //               bottom: 20,
  //               left: 20,
  //               right: 20,
  //               child: Card(
  //                 color: Colors.blueGrey,
  //                 child: Padding(
  //                   padding: EdgeInsets.all(2.0),
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       YoutubePlayerCustomPlayer(videoId: "umhl2hakkcY"),
  //                       SizedBox(height: 50), // Adjust height as needed
  //                       Padding(
  //                         padding: EdgeInsets.all(30.0),
  //                         child: Text("Offset for you"),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         );
  }

