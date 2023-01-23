import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              titleSection,
              searchSection,
              boxSection,
              iconSection,
              subTitleSection,
              bottomSection,
              rowsection,
              bottomSection2,
              rowsection,
            ],
          ),
        ),
 /*         bottomNavigationBar:
          Row(
         
    children: [
          Container(
            height: 55,
            width: 98,
          color: Color.fromARGB(255, 234, 221, 221),
          child: InkWell(
            onTap: () => print('tap on close'),
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          )
          ,
          Container(
            height: 55,
            width: 98,
          color: Color.fromARGB(255, 234, 221, 221),
          child: InkWell(
            onTap: () => print('tap on close'),
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          ),
          Container(
            height: 55,
            width: 98,
          color: Color.fromARGB(255, 234, 221, 221),
          child: InkWell(
            onTap: () => print('tap on close'),
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.music_note_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          ),
          Container(
            height: 55,
            width: 98,
          color: Color.fromARGB(255, 234, 221, 221),
          child: InkWell(
            onTap: () => print('tap on close'),
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          )
          ],
         */
          ); 
      
  }
}

Widget titleSection = Container(
  padding: EdgeInsets.all(25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'AudioNotes',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Container(
        height: 50,
        width: 50,
        child: Icon(
                Icons.headphones_outlined,
                color: Colors.black,
                size: 35,
              ),
      )
    ],
  ),
);






Widget searchSection = Container(
  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
  decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.search,
        color: Colors.grey,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Icon(
        Icons.mic_none,
        color: Colors.grey,
      ),
    ],
  ),
);

Widget boxSection = Container(
  width: double.infinity,
  padding: EdgeInsets.all(25),
  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.orangeAccent,
        Colors.orange,
      ],
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'How robots are changing the world',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'A "made in ICAM" podcast',
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
      SizedBox(height: 10),
      Text(
        'By Théo WEBER',
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Text(
        '14 min',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
           ),
      ),
    ],
  ),
);

Widget containerSection = Container(
  height: 200,
  width: double.infinity,
  margin: EdgeInsets.all(20),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue,
        Colors.green,
      ],
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Titre',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      Text('Sous-titre'),

    ],
  ),
);

Widget rowSection = Container(
  color: Colors.black,
  height: 100,
  margin: EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Expanded(
        child: Container(
          color: Colors.amber,
        ),
      ),
      Container(
        color: Colors.purple,
        height: 100,
        width: 100,
      ),
    ],
  ),
);

Widget iconSection = Container(
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.new_releases,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Daily news')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.school,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('E-Learning')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.flight,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Aeronautic')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.electric_bike,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Transports')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.purple[300],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.rocket_launch,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Spatial')
          ],
        ),
      ),
    ],
  ),
);

Widget lineSection = Container(
  color: Colors.grey[200],
  padding: EdgeInsets.all(4),
);

Widget subTitleSection = Container(
  margin: EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        color: Colors.orange,
        width: 5,
        height: 25,
      ),
      SizedBox(width: 10),
      Text(
        'Recently listened',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  ),
);

Widget bottomSection = Container(
  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: Column(
    children: [
      Container(
        height: 130,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 130,
              width: 110,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.blueGrey,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.smartphone, color: Colors.white, size: 50),
                  SizedBox(height: 10),
                  Text(
                    'The IPhone',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A quick story of the birth of the IPhone',
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'By Arnaud Jobs and Clément Cook', // choice rapid improuvmentof painting ability
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19 min',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), 
          ],
  ),
);

Widget rowsection = Container(
  color: Colors.white,
  padding: EdgeInsets.all(10),
);

Widget bottomSection2 = Container(
  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: Column(
    children: [
      Container(
        height: 130,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 130,
              width: 110,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.indigoAccent,
                    Colors.indigo,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.anchor, color: Colors.white, size: 50),
                  SizedBox(height: 10),
                  Text(
                    'Naval engineer',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Portrait of a naval engineer',
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'By Jeremy Titanic and Malcolm Costa', // choice rapid improuvmentof painting ability
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '22 min',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),     
    ],
  ),
);