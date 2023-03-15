import 'package:flutter/material.dart';

ValueNotifier<int> indexchagenotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchagenotifier,
        builder: (context, int newindex, _) {
          return BottomNavigationBar(
              onTap: (index) {
                indexchagenotifier.value = index;
              },
              currentIndex: newindex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedIconTheme: const IconThemeData(color: Colors.grey),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections), label: 'New & Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions), label: 'Laughs'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_circle_down_outlined),
                    label: 'Download')
              ]);
        });
  }
}
