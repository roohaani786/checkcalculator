import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState()=> new HomePageState();
}

class HomePageState extends State<HomePage>{
  var num1=0,num2=0,sum=0;
  String check;

  final TextEditingController t1 =new TextEditingController(text: "0");
  final TextEditingController t2 =new TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
          sum=num1+num2;
          check = "You added $num1 and $num2";
        });
  }

  void doSubtraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
          sum=num1-num2;
          check = "You Subtracted $num2 from $num1";

        });
  }

  void doMultiplication(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
          sum=num1*num2;
          check = "You multiplied $num1 with $num2";

        });
  }

  void doDivision(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
          sum=(num1~/num2);
        check = "You divided $num1 by $num2";
        });
  }

  void doClear(){
    setState((){
      t1.text="0";
      t2.text="0";
    });
  }

  void storevalueAdd(){
    check = "You added $num1 and $num2";
    
  }

  @override
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(" Roohaani Calculator",),

      ),
      body: new Container(
        padding:const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("CHECK : $check",
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold, 
              color: Colors.purple),
            ),
            new Padding(
              padding:const EdgeInsets.only(top:20.0),
            ),
            new Text("ANSWER : $sum",
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold, 
              color: Colors.purple),
            ),

            new Padding(
              padding:const EdgeInsets.only(top:20.0),
            ),
           
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter number 1"
              
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter number 2"
              ),
              controller: t2,
            ),

             new Padding(
              padding:const EdgeInsets.only(top:20.0),
            ),
           
             new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child:new Text("+"),
                      color: Colors.black,
                      textColor: Colors.white,
                      onPressed: doAddition,
                      

                    ),
                    new MaterialButton(
                      child:new Text("-"),
                      color: Colors.black,
                      textColor: Colors.white,
                      onPressed: doSubtraction,
                      
                    ),
                  ],
               ),


               //row 2

               new Padding(
              padding:const EdgeInsets.only(top:20.0),
            ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child:new Text("*"),
                      onPressed: doMultiplication,

                    ),
                    new MaterialButton(
                      textColor: Colors.white,
                      color:Colors.black,
                      child:new Text("/"),
                      onPressed: doDivision,
                      
                    ),
                    
                    
                  
                  ],
               ),


                new Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                
               new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child:new Text("Clear"),
                      onPressed: doClear,

                    ),
                  ]
               )  



            
          ],
        ),
      ),
    );
  }
}