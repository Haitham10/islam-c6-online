import 'package:flutter/material.dart';
import 'package:islame_c5_online/sura_details/sura.dart';

class ItemSuraName extends StatelessWidget{
  String name ;
  int index ;
  ItemSuraName(this.name,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: (){
      Navigator.pushNamed(context, SuraDeatialsScreen.routeName,
      arguments:SuraDetailsArgs(name, index) );
    },
      child: Container(
      padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(name,
        style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center,),
      ),
    );
  }
}
