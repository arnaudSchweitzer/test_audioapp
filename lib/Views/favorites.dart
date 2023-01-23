import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              titleFav,
            ],
          ),
        ),
      );
  }
}

Widget titleFav = Container(
  padding: EdgeInsets.all(25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Favoris',
        style: TextStyle(fontStyle: FontStyle.normal, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Container(
        height: 50,
        width: 50,
        child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
                size: 35,
              ),
      )
    ],
  ),
);


