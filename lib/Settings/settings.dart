import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
                SizedBox(height: 40),
 //               titleSettings,
   //             darkMode,
                appleLogin,
              ],
          ),
          ),
        );     
  }
}

/*Widget titleSettings = Container(
  padding: EdgeInsets.all(25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Settings',
        style: TextStyle(fontStyle: FontStyle.normal, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Container(
        height: 50,
        width: 50,
        child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 35,
              ),
      )
    ],
  ),
);

Widget darkMode = Scaffold(
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: null, child: Text('Change the theme'))
      ],
    ),
  ),
);
*/


Widget appleLogin = Container(
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
        Icons.apple_outlined,
        color: Colors.grey,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          'Login with Apple',
          style: TextStyle(color: Colors.black),
        ),
      ),
      Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
      ),
    ],
  ),
);