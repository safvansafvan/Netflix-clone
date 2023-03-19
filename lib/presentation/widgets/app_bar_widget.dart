import 'package:flutter/material.dart';
import '../../core/contants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        cWidth,
        Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            )),
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        cWidth
      ],
    );
  }
}
