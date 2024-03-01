// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/utils/colors.dart';
import 'package:youtubeclone/widgets/custom_scrollview_appbar.dart';
import 'package:youtubeclone/widgets/youtube_player_custom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsContants.mainBackgroundColor,
      body: CustomScrollView(
        slivers: [
          CustomScrollViewAppbar(),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 300,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: CustomboxShadow,
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                      style: BorderStyle.solid
                    ),
                  ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 16/9,
                          child: YoutubePlayerCustomPlayer()
                          ),
                          Container(
                            child: 
                            Row(
                              children: [

                              ],
                            ),
                          )
                        
                      ],
                    )
                  ),

                 
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
