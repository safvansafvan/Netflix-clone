import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';
class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            
            url,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext _ ,Widget child,ImageChunkEvent?progress){
              if (progress==null) {
                return child;
              }else{
               return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            errorBuilder: (BuildContext _ ,Object a,StackTrace? trace){
              return const Center( child:  Icon(Icons.wifi,color: cwhite,),);
            }
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_mute,
              color: cwhite,
            ),
          ),
        ),
      ],
    );
  }
}
