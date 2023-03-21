import 'package:flutter/cupertino.dart';
import 'package:netflix_npp/core/contants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: radius10,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
