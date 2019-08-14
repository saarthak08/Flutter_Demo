class ImageModel{
  int id;
  String url;
  String title;

  ImageModel(this.id,this.url,this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson){
    this.id=parsedJson['id'];
    this.url=parsedJson['url'];
    this.title=parsedJson['title'];
  }


  /* image_model.fromJson(Map<String, dynamic> parsedJson)
    : this.id=parsedJson['id'],
    this.url=parsedJson['url'],
    this.title=parsedJson['title']; */ //Alternate form of defining the constructor
}