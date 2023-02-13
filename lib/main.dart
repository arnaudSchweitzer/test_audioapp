import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'Views/playlists_view.dart';


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
        home: PlaylistShow(),
      );
  }
}
