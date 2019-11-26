

import 'dart:convert';

import 'package:change_notifier_demo/models/movie.dart';
import 'package:http/http.dart' as http; 

class Webservice {

  Future<List<Movie>> getAllMovies() async {

    final response = await http.get('https://miniature-glockenspiel.glitch.me/movies');
    if(response.statusCode == 200) {

      Iterable json = jsonDecode(response.body); 
      return json.map((movie) => Movie.fromJson(movie)).toList();

    } else {
      throw Exception("Error downloading movies..");
    }

  }

}