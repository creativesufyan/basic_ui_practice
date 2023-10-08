import 'package:basic_ui_profile/profile_ui.dart';
import 'package:basic_ui_profile/test_code.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body:ProfileIUTest(),
      body: ProfileUITest(),
    );
  }
}
