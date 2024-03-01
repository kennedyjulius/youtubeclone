// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/utils/colors.dart';
import 'package:youtubeclone/widgets/customCircular_avatar.dart';
import 'package:youtubeclone/widgets/custom_iconbutton.dart';
import 'package:youtubeclone/widgets/youtube_player_custom.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({Key? key}) : super(key: key);

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: YoutubePlayerCustomPlayer(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Youtube Tutorial showing how to create a custom video player in Flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Text(
                              "21M views 1yr ago",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                              ),
                            ),
                        SizedBox(width: 5,),
                            Text(
                              "#Youtube ...",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(width: 5,),
                             Text(
                              "more",
                              style: TextStyle(
                                color: ColorsContants.textColor,
                                fontSize: 14.0,
                              ),
                            ),
                      ],
                    ),
                    SizedBox(height: 8.0,),
                Row(
                  children: [
                    CustomCircularAvatar(
                      radius: 17,
                      imageUrl: "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww", // Placeholder URL
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Kennedy",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "1.39M",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14.0,
                      ),
                    ),
                    Expanded(child: Container()),
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amberAccent,
                      onTap: () {
                        
                      },
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorsContants.iconColor,
                        ),
                        child: Center(
                          child: Text(
                            "Subscribe",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
