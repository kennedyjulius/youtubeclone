// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:youtubeclone/widgets/custom_container.dart';
// import 'package:youtubeclone/widgets/youtube_player_custom.dart';

// class CustomShortsCard extends StatelessWidget {
//   const CustomShortsCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Item 1
//                 CustomContainer(
//                     videoCard: YoutubePlayerCustomPlayer(
//                   videoId: "L4MWKGstaHk",
//                 )
//                 ),
//                 // Item 2
//                 CustomContainer(
//                     videoCard:
//                         YoutubePlayerCustomPlayer(videoId: "OjCVx8i2PCA"))
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Item 3
//                 CustomContainer(
//                     videoCard:
//                         YoutubePlayerCustomPlayer(videoId: "pctSfB88hj0")),
//                 // Item 4
//                 CustomContainer(
//                     videoCard:
//                         YoutubePlayerCustomPlayer(videoId: "umhl2hakkcY")),
//               ],
//             ),
//           ],
//         ),
//         );
//   }
// }
