// {"id":5,
// "image":"https://i.some-random-api.ml/MRSkC75kNv.png",
// "caption":"This meme cannot be more exact",
// "category":"random"}

class Meme {
  final String image;
  final String caption;
  final String category;
  final int id;

  Meme({this.image, this.caption, this.category, this.id});
  // List meme = <Meme>[];
  Meme.fromJson(Map<String, dynamic> jsonconvert)
      :
        //  {
        //  Meme(
        image = jsonconvert["image"],
        caption = jsonconvert["caption"],
        category = jsonconvert["category"],
        id = jsonconvert["id"];
  // );
  // }
  //  factory Meme.fromJson(Map<String, dynamic> jsonconvert)
      
  //        {
  //     return   Meme(
  //       image : jsonconvert["image"],
  //       caption : jsonconvert["caption"],
  //       category : jsonconvert["category"],
  //       id : jsonconvert["id"]
  // );
  // }
}
