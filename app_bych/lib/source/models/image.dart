class ModelImages {
  int id;
  String url;
  String title;

  //basic constructor
  ModelImages(this.id, this.url, this.title);

  //named constructor
  ModelImages.fromJson(Map<String, dynamic> toJson) {
    id = toJson['id'];
    url = toJson['url'];
    title = toJson['title'];
  }
}
