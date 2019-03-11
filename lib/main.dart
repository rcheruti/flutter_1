import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  'Flutter Login',
      theme:  ThemeData( 
        primaryColor:   Colors.green[900], 
        primarySwatch:  Colors.green,
        accentColor:    Colors.orange[900],

      ),
      home:   LoginPage(),
    );
  }
}
