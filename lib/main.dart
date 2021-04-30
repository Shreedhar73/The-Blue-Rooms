import 'package:flutter/material.dart';

import 'Pages/Details.dart';
import 'Pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel_Book',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: HomePage(),
      routes: {
        'details' : (ctx) => DetailsPage(),
      },
    );
  }
}
