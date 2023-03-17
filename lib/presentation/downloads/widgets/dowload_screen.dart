import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/widgets/app_bar_widget.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});

  final _widgetList = [
    const Smartdownloads(),
    Sectiontwo(),
    const Sectionthree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => const SizedBox(
                height: 25,
              ),
          itemCount: _widgetList.length),
    );
  }
}

class Sectiontwo extends StatelessWidget {
  Sectiontwo({super.key});
  final List imagelist = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/iCvgemXf2Kpr2LvpDmt5J9NhjKM.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/62HCnUTziyWcpDaBO2i1DX17ljH.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Download For You',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: cwhite, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        cHeight,
        const Text(
          'We will download a personalized section of\nmovie and shows for you, so there is always\nsomething to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        cHeight,
        SizedBox(
          height: size.width,
          width: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: size.width * 0.4,
              ),
              Downloadimagewidget(
                  imagelist: imagelist[0],
                  angle: 12,
                  size: Size(size.width * 0.35, size.width * 0.55),
                  margin: const EdgeInsets.only(left: 100, top: 15)),
              Downloadimagewidget(
                  imagelist: imagelist[1],
                  angle: -12,
                  size: Size(size.width * 0.35, size.width * 0.55),
                  margin: const EdgeInsets.only(right: 100, top: 15)),
              Downloadimagewidget(
                  size: Size(size.width * 0.45, size.width * 0.62),
                  radius: 10,
                  imagelist: imagelist[2],
                  margin: const EdgeInsets.only(bottom: 10, top: 20))
            ],
          ),
        ),
      ],
    );
  }
}

class Sectionthree extends StatelessWidget {
  const Sectionthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: cbuttoncolorblue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: cwhite, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ),
        cHeight,
        MaterialButton(
          color: cbuttoncolorwhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: cblackcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}

class Smartdownloads extends StatelessWidget {
  const Smartdownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class Downloadimagewidget extends StatelessWidget {
  const Downloadimagewidget(
      {Key? key,
      required this.imagelist,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 10})
      : super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            margin: margin,
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imagelist))),
          ),
        ),
      ),
    );
  }
}
