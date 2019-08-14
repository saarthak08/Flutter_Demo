import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;   //show is used to import specific parts from a library only.
import 'models/image_model.dart';
import 'dart:convert';
import 'dart:async';
import 'widgets/image_list.dart';

class App extends StatefulWidget{
  createState(){
    return AppState();
  }
}


class AppState extends State<App>{
  int counter=0;
  List<ImageModel> imagesList=[];

  void fetchImage() async{
      counter++;
      final response=await get('https://jsonplaceholder.typicode.com/photos/$counter');
      final imageModel=ImageModel.fromJson(json.decode(response.body));
      setState(() {
       imagesList.add(imageModel);
      });

  }

  Widget build(BuildContext context){
    return 
    MaterialApp(
      title: 'Demo Flutter',
    home:Scaffold(appBar: AppBar(title: Text('Lets see some Images!'),
    elevation: 4
    ),
     body: ImageList(imagesList),
    floatingActionButton: FloatingActionButton(
      onPressed:fetchImage
      ,child: Icon(Icons.add)
      ,)
  ,)
  );
  }
}