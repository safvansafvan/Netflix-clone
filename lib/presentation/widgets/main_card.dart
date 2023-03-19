import 'package:flutter/cupertino.dart';
import 'package:netflix_npp/core/contants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: radius10,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w220_and_h330_face/xf9wuDcqlUPWABZNeDKPbZUjWx0.jpg'))),
      ),
    );
  }
}
