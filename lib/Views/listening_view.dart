import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listening extends StatelessWidget {
  const Listening({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              
              titleSection,
              
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'images/avion.jpg',
                  height: 300.0,
                  width: 300.0,),),
                  podCast,
            ],
          ),
        ),       );      
  }
}



Widget titleSection = Container(
  padding: EdgeInsets.all(25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(''),
      Container(
        height: 50,
        width: 50,
        child: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 35,
              ),
      )
    ],
  ),
);

Widget podCast = Container(
     padding: EdgeInsets.all(25),
      child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text('OUI'),
      ],
      ),
);