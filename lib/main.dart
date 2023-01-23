import 'package:audio_app_example/Views/songscreen.dart';
import 'package:audio_app_example/homeview.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter OnePage Design';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: HomeView(),
      );
  }
}
