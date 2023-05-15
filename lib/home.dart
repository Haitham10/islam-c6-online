import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:islame_c5_online/home/hadeth_tap.dart';
import 'package:islame_c5_online/home/quran/quran_tap.dart';
import 'package:islame_c5_online/home/radio_tap.dart';
import 'package:islame_c5_online/home/tasbeh_tap.dart';
class HomeScreen extends StatefulWidget{
  static const String routeName ='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
          appBar:AppBar(
            title: Text('Islami',
            style: Theme.of(context).textTheme.headline1,),
          ),
          bottomNavigationBar: Theme(
            data:Theme.of(context).copyWith(
              canvasColor:  Theme.of(context).primaryColor
            ) ,
            child: BottomNavigationBar(
            currentIndex:currentIndex
              ,onTap: (index){
              currentIndex = index ;
              setState(() {
              });
            },
              items: [BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ic_quarn.png')),
              label: 'Quran'),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: 'Hadeth'),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: 'Sebha'),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: 'Radio')],

            ),
          ),
          body:taps[currentIndex] ,
        )
      ],
    );

  }
  List<Widget> taps =[
    QuranTap(),HadethTap(),TasbehTap(),RadioTap()
  ];
}