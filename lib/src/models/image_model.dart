class image_model{
  int id;
  String url;
  String title;

  image_model(this.id,this.url,this.title);

  image_model.fromJson(Map<String, dynamic> parsedJson){
    this.id=parsedJson['id'];
    this.url=parsedJson['url'];
    this.title=parsedJson['title'];
  }


  /* image_model.fromJson(Map<String, dynamic> parsedJson)
    : this.id=parsedJson['id'],
    this.url=parsedJson['url'],
    this.title=parsedJson['title']; */ //Alternate form of defining the constructor
}