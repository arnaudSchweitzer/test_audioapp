import 'package:audio_app_example/Settings/parameters.dart';
import 'package:audio_app_example/Settings/settings.dart';
import 'package:audio_app_example/Views/homescreen.dart';
import 'package:audio_app_example/Views/listening_view.dart';
import 'package:audio_app_example/Views/login.dart';
import 'package:audio_app_example/Views/playlistpage.dart';
import 'package:audio_app_example/Views/playlists_view.dart';
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
          bottomNavigationBar: NavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        currentIndex: _currentIndex,
      ),
    );
    
  }

 Widget NavigationBar({required int currentIndex, required Function(int) onTap}) {
    return Container(
      color: const Color(0xfff6f8ff),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            selectedItemColor: Color.fromARGB(255, 237, 158, 41),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: onTap,
            items: [
              const BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 40,
                ),
              ),
              const BottomNavigationBarItem(
                label: 'PlayLists',
                icon: Icon(
                  Icons.playlist_add_check_circle,
                  size: 40,
                ),
              ),
              const BottomNavigationBarItem(
                label: 'Listening',
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 40,
                ),
              ),
              const BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
