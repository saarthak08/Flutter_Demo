import 'package:Demo_Flutter/src/widgets/alert_dialog_box.dart';
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

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      home: App(),
    );
  }
}



class AppState extends State<App>{
  int counter=0;
  List<ImageModel> imagesList=[];

  void fetchImage(BuildContext context) async{
      counter++;
      showAlertDialog(context);
      final response=await get('https://jsonplaceholder.typicode.com/photos/$counter');
      final imageModel=ImageModel.fromJson(json.decode(response.body));
      setState(() {
       imagesList.add(imageModel);
       Navigator.of(context).pop();
      });

  }

  Widget build(BuildContext context){
    return
    Scaffold(
      appBar: AppBar(
          title: Text('Lets see some Images!'),
          elevation: 4
    ),
      body: ImageList(imagesList),
      floatingActionButton: FloatingActionButton(
        onPressed:(){ fetchImage(context);}
      , child: Icon(Icons.add)
        ,)
  ,);
  }
  
  showAlertDialog(BuildContext context){
     // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogBox();
      },
      barrierDismissible: false
    );
  }
}

