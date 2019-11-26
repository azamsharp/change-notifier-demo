

import 'package:change_notifier_demo/viewmodels/movieListViewModel.dart';
import 'package:change_notifier_demo/widgets/movieList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieListPage extends StatefulWidget {
  @override 
  _MovieListPageState createState() => _MovieListPageState(); 
}

class _MovieListPageState extends State<MovieListPage> {

  @override
  void initState() {
    super.initState();
    Provider.of<MovieListViewModel>(context,listen: false).fetchAllMovies();
  }

  Widget _buildUI(MovieListViewModel vm) {
    if(vm.movies == null) {
      return Align(child: CircularProgressIndicator());
    } else if(vm.movies.isEmpty) {
      return Align(child: Text("No movies found."));
    } else {
      return MovieList(movies: vm.movies);
    }
  }
 
  @override
  Widget build(BuildContext context) {

    final vm =  Provider.of<MovieListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: _buildUI(vm)
    );
    
  }
}