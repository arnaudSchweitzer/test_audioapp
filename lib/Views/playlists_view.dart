import 'package:flutter/material.dart';

class PlaylistShow extends StatelessWidget {
  const PlaylistShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: 40),
              podcast_1,
              podcast_2,
              podcast_3,
            ],
          ),
        ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Image.asset(
              'assets/images/LOGO2.jpg',
              height: 60,
            )
          ),
          ); 

      
  }
}

Widget podcast_1 = ListTile(
  leading: Icon(Icons.flight_takeoff_outlined),
  title: Text("Aviation"),
);

Widget podcast_2 = ListTile(
  leading: Icon(Icons.school),
  title: Text("Made in ECAM Podcasts"),
);

Widget podcast_3 = ListTile(
  leading: Icon(Icons.rocket_sharp),
  title: Text("News"),
);
