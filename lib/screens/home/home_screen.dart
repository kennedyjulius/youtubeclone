import 'package:flutter/material.dart';
import 'package:youtubeclone/utils/colors.dart';
import 'package:youtubeclone/widgets/custom_scrollview_appbar.dart';
import 'package:youtubeclone/widgets/video_card.dart';

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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    VideoCard(),// Your column children here
                  ],
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
