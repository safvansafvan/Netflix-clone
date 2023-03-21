import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/download/dowload_bloc.dart';
import '../../application/home/home_bloc.dart';
import '../main_pages/widgets/screen_main_page.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoMainPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getHomeScreenData());
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });

    return const Scaffold(
      body: Center(),
    );
  }

  Future<void> gotoMainPage() async {
    Future.delayed(const Duration(seconds: 3));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ScreenMainPage()));
  }
}
