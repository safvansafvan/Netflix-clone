import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/contants.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:const Size.fromHeight(85),
          child: AppBar(
            title:const Text(
              'New & Hot',
              style:  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cast,
                    color: Colors.white,
                    size: 30,
                  )),
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              cWidth,
              
            ],
          bottom: TabBar(
            isScrollable: true,
          labelColor: cblackcolor,
          labelStyle:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
          unselectedLabelColor: cwhite,
            indicator: BoxDecoration(color: cwhite,borderRadius:radius30 ),
            tabs:const [
            Tab(text: '🍿 Coming Soon',),
            Tab(text:" 👀 Everyone's Watching",)
          ]),
          ),

        ),
        body: TabBarView(children: [
           buildtabbarview('coming soon'),
            buildtabbarview('everyone is watching')

        ]),
      ),
    );
  }

  buildtabbarview(String name){
    return Center(
      child: Text(name),
    );
  }
}
