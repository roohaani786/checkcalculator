import 'package:calculator/home_page.dart';
import 'package:flutter/material.dart';

void main()
{

  runApp(new MyApp());

}

class MyApp extends StatelessWidget{

  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Rooohaani Calculator",
      theme: new ThemeData(primarySwatch:Colors.red
      ),
      home: new HomePage(),
    );
  }
}
