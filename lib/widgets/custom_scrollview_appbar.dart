// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/widgets/customCircular_avatar.dart';



class CustomScrollViewAppbar extends StatefulWidget {
  const CustomScrollViewAppbar({super.key});

  @override
  State<CustomScrollViewAppbar> createState() => _CustomScrollViewAppbarState();
}

class _CustomScrollViewAppbarState extends State<CustomScrollViewAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //expandedHeight: 80,
      backgroundColor: Colors.black,
      //leadingWidth: double.maxFinite,
      leading: Padding(
        
        padding: EdgeInsets.only(left: 10, top: 10),
        child: Image(
          width: 70,
          height: 70,
          image: AssetImage(

            "assets/youtubelogo.png"))
      ),
      actions: [
        //cast button
        IconButton(
            onPressed: () {
              print("cast button pressed");
            },
            icon: Icon(Icons.cast)),
        SizedBox(
          width: 10,
        ),
        //notification button
        IconButton(onPressed: () {
          print("cast button pressed");
        }, icon: Icon(Icons.notifications_outlined)),
        SizedBox(
          width: 10,
        ),
        //search Button
        IconButton(onPressed: () {
          print("cast button pressed");
        }, icon: Icon(Icons.search)),
        SizedBox(
          width: 10,
        ),
        CustomCircularAvatar(
          radius: 20,
          imageUrl:
              "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww",
        )
      ],
    );
  }
}
