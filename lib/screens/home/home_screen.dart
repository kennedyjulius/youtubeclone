// ignore_for_file: prefer_const_constructors

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
          children: [
            const CustomScrollViewAppbar(),
            SizedBox(
              height: 360,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Update this if needed
                itemBuilder: (context, index) {
                  return VideoCard();
                },
              ),
            ),
            SizedBox(height: 2),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 16 / 9,
                mainAxisExtent: 105,
                crossAxisSpacing: 12,
                mainAxisSpacing: 10,
              ),
              itemCount: videoIds.length,
              itemBuilder: (context, index) {
                return Container(
                  //height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // border: Border.all(
                    //   color: Colors.grey,
                    // )
                  ),
                  child: YoutubePlayerCustomPlayer(videoId: videoIds[index]),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
