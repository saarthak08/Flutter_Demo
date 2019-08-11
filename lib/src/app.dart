import 'package:flutter/material.dart';

class App extends StatefulWidget{
  createState(){
    return AppState();
  }
}
class AppState extends State<App>{
  int counter=0;

  Widget build(BuildContext context){
    return 
    MaterialApp(
    home:Scaffold(appBar: AppBar(title: Text('Lets see some Images!'),
    elevation: 4
    ),
     body: Text("$counter" ' images'),
    floatingActionButton: FloatingActionButton(
      onPressed:(){
          setState(() {
            counter +=1;
          });
         }
      ,child: Icon(Icons.clear)
      ,)
  ,)
  );
  }
}