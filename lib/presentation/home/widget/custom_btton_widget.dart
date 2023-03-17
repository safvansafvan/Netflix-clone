import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';

class CoustumButtonWidget extends StatelessWidget {
  const CoustumButtonWidget({
    super.key, required this.icon, required this.title,  this.iconssize=30,  this.textsize=18,
  });
  final IconData icon;
  final String title;
  final double iconssize;
  final double textsize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Icon(
         icon,
          size:iconssize,
          color: cwhite,
        ),
         Text(
          title,
          style: TextStyle(fontSize:textsize, color: cwhite),
        ),
      ],
    );
  }
}
