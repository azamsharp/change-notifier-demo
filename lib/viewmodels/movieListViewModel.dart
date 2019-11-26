
import 'package:change_notifier_demo/models/movie.dart';
import 'package:change_notifier_demo/services/webservice.dart';
import 'package:flutter/material.dart';

class MovieListViewModel extends ChangeNotifier {

  List<MovieViewModel> movies; 

  Future<void> fetchAllMovies() async {

    final movies = await Webservice().getAllMovies();
    this.movies = movies.map((movie) => MovieViewModel(movie: movie)).toList();
    notifyListeners(); 
  }

}

class MovieViewModel {

  final Movie movie; 

  MovieViewModel({this.movie});

  String get title {
    return this.movie.title; 
  }

}

