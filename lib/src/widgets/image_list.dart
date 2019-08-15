import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
    final List<ImageModel> images;
    ImageList(this.images);

      Widget build(BuildContext context){
        return ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, int index){
            return buildImage(images[index]);
          },
        );
    }

  Widget buildImage(ImageModel imageModel){
   return Container(
            padding: EdgeInsets.all(20) ,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              )
            ),
            child: Column(
              children: <Widget>[
                Padding(
                child: Image.network(imageModel.url),
                  padding: EdgeInsets.only(
                    bottom: 8.0,
                  ),
                ),
                Text(imageModel.title),
              ],
            ),    
        );
  }
}

