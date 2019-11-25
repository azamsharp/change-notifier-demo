

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("hello world"),
        );
      },
    );
    
  }

}