import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_c5_online/sura_details/sura_verse.dart';

class SuraDeatialsScreen extends StatefulWidget{
  static const String routeName='sura';

  @override
  State<SuraDeatialsScreen> createState() => _SuraDeatialsScreenState();
}

class _SuraDeatialsScreenState extends State<SuraDeatialsScreen> {
  List <String> verses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if(verses.isEmpty)
    loadFile(args.index);
    return
      Stack(
        children: [
        Image.asset('assets/images/main_background.png',width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
    Scaffold(
    appBar:AppBar(
    title: Text(args.name,
    style: Theme.of(context).textTheme.headline1,),
    ),
      body: verses.length==0?
          Center(child: CircularProgressIndicator())
      :ListView.builder(itemBuilder: (_,index){
        return SuraVerse(verses[index]);
      },
        itemCount: verses.length ,),
    )
    ]);
  }

  void loadFile(int index)async {
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines= content.split("\n");
    verses=lines ;
    setState(() {});
}
}
class SuraDetailsArgs {
  String name ;
  int index ;
  SuraDetailsArgs(this.name,this.index);
}