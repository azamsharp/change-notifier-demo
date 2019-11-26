import 'package:change_notifier_demo/pages/movieListPage.dart';
import 'package:change_notifier_demo/viewmodels/movieListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Movies", 
      home: 
      ChangeNotifierProvider(
        builder: (_) => MovieListViewModel(),
        child: MovieListPage(),
      )
    );
    
  }

}

