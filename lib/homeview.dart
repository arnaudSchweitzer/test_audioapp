import 'package:audio_app_example/Settings/parameters.dart';
import 'package:audio_app_example/Settings/settings.dart';
import 'package:audio_app_example/Views/homescreen.dart';
import 'package:audio_app_example/Views/listening_view.dart';
import 'package:audio_app_example/Views/login.dart';
import 'package:audio_app_example/Views/songscreen.dart';
import 'package:flutter/material.dart';
import 'package:audio_app_example/Views/favorites.dart';

class HomeView extends StatefulWidget{
  // ignore: non_constant_identifier_names
  const HomeView({Key? key}):super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>{
final PageController _pageController = PageController(initialPage: 0);
int _currentIndex = 0;

@override
void dispose(){
  _pageController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: PageView(
          onPageChanged: (index){
            setState(() {
              _currentIndex = index;
            },
            );
          },
          controller: _pageController,
          children: const <Widget> [
            
            HomeScreen(),
            Favorites(),
            SongScreen(),
            Login(),
            Parameters(),
          ]
          ,),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState((
              ) {
                _currentIndex = index;               
              });
              _pageController.jumpToPage(_currentIndex);             
            },
            type: BottomNavigationBarType.fixed, // Fixed 
              backgroundColor: Colors.white, // <-- This works for fixed
              selectedItemColor: Colors.orangeAccent,
              unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                 ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: 'Favorites',
                 ),

              BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_fill),
                label: 'Listen',
                 ),

              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account',
                 ), 

              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                 ), 
               
                    
            ]
          ),
    );
  }
  
}
