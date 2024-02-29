import 'package:flutter/material.dart';

class CustomCircularAvatar extends StatefulWidget {
  // final ImageView imageView;
  final double radius;
  final String imageUrl;
  
  const CustomCircularAvatar({super.key, 
  // required this.imageView, 
  required this.radius, 
  required this.imageUrl
  });

  @override
  State<CustomCircularAvatar> createState() => _CustomCircularAvatarState();
}

class ImageView {
}

class _CustomCircularAvatarState extends State<CustomCircularAvatar> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: CircleAvatar(
        radius: widget.radius,
        onForegroundImageError: (exception, stackTrace) =>
            Icon(Icons.error_outline),
        foregroundImage: NetworkImage(
            widget.imageUrl,

            ),
      ),
    );
  }
}
