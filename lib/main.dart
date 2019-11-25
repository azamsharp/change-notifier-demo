import 'package:change_notifier_demo/pages/movieListPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Movies", 
      home: MovieListPage()
    );
    
  }

}

