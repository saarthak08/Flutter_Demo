import 'package:flutter/material.dart';

class App extends StatelessWidget{
  
  Widget build(BuildContext context){
    return 
    MaterialApp(
    home:Scaffold(appBar: AppBar(title: Text('Lets see some Images!'),
    elevation: 4
    ),floatingActionButton: FloatingActionButton(
      onPressed:(){
         print('Hi');
         }
      ,child: Icon(Icons.clear)
      ,)
  ,)
  );
  }
}