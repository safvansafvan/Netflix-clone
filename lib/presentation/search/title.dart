import 'package:flutter/cupertino.dart';

class SearchTitleText extends StatelessWidget {
  const SearchTitleText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
    );
  }
}
