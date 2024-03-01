import 'package:flutter/material.dart';
import 'package:youtubeclone/utils/colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback ontap;
  final double size;
  const CustomIconButton({super.key, 
  required this.icon, 
  required this.ontap, 
  required this.size
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: ontap,
        icon: Icon(
          icon,
          color: ColorsContants.iconColor,
          size: size,
          
        ));
  }
}
