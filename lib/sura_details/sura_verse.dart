import 'package:flutter/material.dart';
import 'package:islame_c5_online/sura_details/sura.dart';

class SuraVerse extends StatelessWidget{
  String name ;
  SuraVerse(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(name,
      style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center,),
    );
  }
}
