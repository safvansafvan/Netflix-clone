import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/home/widget/custom_btton_widget.dart';
import 'package:netflix_npp/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Feb',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.sansita().fontFamily),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 70,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              cHeight20,
              Row(
                children: [
                  Text('Elona Holmes 2',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily)),
                  const Spacer(),
                  const CustomButtonWidget(
                    icon: Icons.notifications_outlined,
                    title: 'RemindMe',
                    iconssize: 17,
                    textsize: 13,
                  ),
                  cWidth,
                  const CustomButtonWidget(
                    icon: Icons.info_outline,
                    title: 'Info',
                    iconssize: 17,
                    textsize: 13,
                  ),
                  cWidth
                ],
              ),
              cHeight,
              const Text(
                'Coming On Friday',
                style: TextStyle(fontSize: 15),
              ),
              cHeight,
              const Text(
                'Elona Holmes 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              cHeight,
              const Text(
                'Landing the lead in the school musical is\ndream come true for Jodi,until the pressure\nsends her cofidence and her realashion ship-into a tailspin',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
