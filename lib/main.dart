import 'package:flutter/material.dart';
import 'package:islame_c5_online/home.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
  return MaterialApp(
    routes: {
      HomeScreen.routeName: (buildContect) => HomeScreen()
    },
    initialRoute:HomeScreen.routeName ,
  );
  }
}