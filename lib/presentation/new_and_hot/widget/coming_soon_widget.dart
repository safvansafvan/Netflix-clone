import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/home/widget/custom_btton_widget.dart';
import 'package:netflix_npp/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterpath,
    required this.moviename,
    required this.description,
  });

  final String id;
  final String month;
  final String day;
  final String posterpath;
  final String moviename;
  final String description;

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
               Text(
                month,
                style:const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                day,
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
               VideoWidget(url: posterpath,),
              cHeight20,
              Row(
                children: [
                  Expanded(
                    child: Text(moviename,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.bebasNeue().fontFamily)),
                  ),
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
               Text(
                'Coming On $day $month',
                style:const TextStyle(fontSize: 15),
              ),
              cHeight,
               Text(
                moviename,
                style:const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              cHeight,
               Text(
                description,
                maxLines: 4,
                style:const TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
