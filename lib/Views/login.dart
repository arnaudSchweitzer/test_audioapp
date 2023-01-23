import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              loginSection,
  
              googleLogin,
              emailLogin,
              signIn,
            ],
          ),
        ),
          );      
  }
}

Widget loginSection = Container(
  padding: EdgeInsets.all(25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Sign in',
        style: TextStyle(fontStyle: FontStyle.normal, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Container(
        height: 50,
        width: 50,
        child: Icon(
                Icons.account_balance_outlined,
                color: Colors.black,
                size: 35,
              ),
      )
    ],
  ),
);

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

Widget googleLogin = Container(
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
        Icons.g_mobiledata,
        color: Colors.orange,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          'Login with Google',
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
Widget emailLogin = Container(
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
        Icons.email_outlined,
        color: Colors.orange,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          'e-mail Login',
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

Widget signIn = Container(
  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
  decoration: BoxDecoration(
    color: Colors.orangeAccent,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.add_reaction_outlined,
        color: Colors.grey,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          'Register',
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