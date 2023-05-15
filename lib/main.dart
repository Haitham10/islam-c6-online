import 'package:flutter/material.dart';
import 'package:islame_c5_online/home.dart';
import 'package:islame_c5_online/sura_details/sura.dart';
import 'package:islame_c5_online/theme_data.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
  return MaterialApp(
    routes: {
      HomeScreen.routeName: (buildContect) => HomeScreen(),
      SuraDeatialsScreen.routeName:(buildContect)=>SuraDeatialsScreen()
    },
    initialRoute:HomeScreen.routeName ,
    theme: MyThemeDtat.lightTheme,
    darkTheme: MyThemeDtat.darkTheme,
  );
  }
}