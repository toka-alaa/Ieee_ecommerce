class ProductResponse {
  int? id;
  String? title ;
  String? slag;
  int? price;
  String? discripetion;
  List<String>? images;

  ProductResponse(this.id,this.slag,this.title,this.discripetion,this.images,this.price);

  ProductResponse.fromJson(Map<String,dynamic> Json){
    id = Json["id"];
    title = Json["title"];
    slag = Json["slag"];
    price = Json["price"];
    discripetion = Json["discripetion"];
    images = Json["images"] != null
        ? (Json["images"] as List).map((e) => e.toString()).toList()
        : null;
  }
}