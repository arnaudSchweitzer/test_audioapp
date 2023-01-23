import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class Parameters extends StatelessWidget {
  const Parameters({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter dark mode',
        theme: theme,
        darkTheme: darkTheme,
        home: Dark(),
      ), 
    );     
  }
}

Widget titleSettings = Container(
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

class Dark extends StatefulWidget {
  Dark({Key? key}):super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Dark createState()=> _Dark();

}

class _Dark extends State<Dark> {
bool darkmode = false;
dynamic savedThemeMode;


void initState(){
  super.initState();
  getCurrentTheme();
}
Future getCurrentTheme()async {
  savedThemeMode = await AdaptiveTheme.getThemeMode();
  if (savedThemeMode.toString() == 'AdaptiveThemeMode.dark'){
    print('theme sombre');
  }else{
    print('theme clair');
    darkmode = false;
  }
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
              AdaptiveTheme.of(context).toggleThemeMode();
            }, 
            child: Text('Chande the mode')),
        ],
      ),),
    );
  }
}
