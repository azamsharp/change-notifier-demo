

import 'package:change_notifier_demo/widgets/movieList.dart';
import 'package:flutter/material.dart';

class MovieListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: MovieList()
    );
    
  }
}