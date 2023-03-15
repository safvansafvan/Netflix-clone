import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/widgets/app_bar_widget.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});
  final List imagelist = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/iCvgemXf2Kpr2LvpDmt5J9NhjKM.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/62HCnUTziyWcpDaBO2i1DX17ljH.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView(
        children: [
          Row(
            children: const [
              cWidth,
              Icon(
                Icons.settings,
                color: cwhite,
              ),
              cWidth,
              Text(
                'Smart Download',
              )
            ],
          ),
          const Text('Introducing Download For You'),
          const Text(
              'We will download a personalized of movie and shows for you, so there is always something to watch on your device'),
          Container(
            height: size.width,
            width: size.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.35,
                ),
                Downloadimagewidget(
                    imagelist: imagelist[0],
                    angle: 20,
                    size: Size(size.width * 0.4, size.width * 0.58),
                    margin: EdgeInsets.only(left: 100, bottom: 50)),
                Downloadimagewidget(
                    imagelist: imagelist[1],
                    angle: -20,
                    size: Size(size.width * 0.4, size.width * 0.58),
                    margin: EdgeInsets.only(right: 100, bottom: 50)),
                Downloadimagewidget(
                    size: Size(size.width * 0.5, size.width * 0.65),
                    radius: 30,
                    imagelist: imagelist[2],
                    margin: EdgeInsets.only(bottom: 10))
              ],
            ),
          ),
          MaterialButton(
            color: cbuttoncolorblue,
            onPressed: () {},
            child: const Text(
              'Set up',
              style: TextStyle(
                  color: cwhite, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          MaterialButton(
            color: cbuttoncolorwhite,
            onPressed: () {},
            child: const Text(
              'See what you can',
              style: TextStyle(
                  color: cblackcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

class Downloadimagewidget extends StatelessWidget {
  Downloadimagewidget({
    Key? key,
    required this.imagelist,
    this.angle = 0,
    required this.margin,
    required this.size,
     this.radius=10
  }) : super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
   
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(image: NetworkImage(imagelist))),
      ),
    );
  }
}
