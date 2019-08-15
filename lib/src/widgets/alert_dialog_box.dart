import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class AlertDialogBox extends StatelessWidget{
  
  Widget build(BuildContext context){
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
    return alert;
  }
}