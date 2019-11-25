
class Movie {

  final String title; 
  final String description; 

  Movie({this.title, this.description});

  factory Movie.fromJson(Map<String,dynamic> json) {
    return Movie(
      title: json["title"], 
      description: json["description"]
    );
  }

}