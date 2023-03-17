import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';

class CoustumButtonWidget extends StatelessWidget {
  const CoustumButtonWidget({
    super.key, required this.icon, required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Icon(
         icon,
          size: 22,
          color: cwhite,
        ),
         Text(
          title,
          style:const TextStyle(fontSize: 17, color: cwhite),
        ),
      ],
    );
  }
}
