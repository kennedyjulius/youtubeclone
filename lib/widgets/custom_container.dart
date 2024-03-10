import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget videoCard;

  const CustomContainer({Key? key, required this.videoCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      height: 170,
      width: 100,
      child: videoCard,
    );
  }
}
