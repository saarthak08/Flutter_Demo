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


  Widget showAlertDialog(BuildContext context) {

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Please Wait!"),
      content: new Container(
        child:
            new Column(
              children: <Widget>[
                Text("Loading..."),
                Padding(
                child: CircularProgressIndicator(backgroundColor: Colors.tealAccent,valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),),
                  padding: EdgeInsets.all(16.0),
              )
              ],
              mainAxisSize: MainAxisSize.min,
            ),
      ),
      backgroundColor: Colors.lightGreen,
      elevation: 8.0,
      shape: Border.all(
        color: Colors.black,
        style: BorderStyle.solid
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

    return alert;
  }
}

