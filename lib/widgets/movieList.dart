



import 'package:change_notifier_demo/viewmodels/movieListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieList extends StatelessWidget {

  List<MovieViewModel> movies; 

  MovieList({this.movies});

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
      itemCount: this.movies.length,
      itemBuilder: (BuildContext context, int index) {

        final movie = this.movies[index];

        return ListTile(
          title: Text(movie.title),
        );
      },
    ); 
  }

}