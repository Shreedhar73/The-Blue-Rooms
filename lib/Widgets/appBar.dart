import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(

      iconTheme: IconThemeData(color: Colors.blueGrey),
      title: Row(
        children: [
          IconButton(
              icon: Icon(Icons.menu, color: Colors.black54,), onPressed: () {}),

        ],
      ),
      centerTitle: true,
      titleSpacing: 0.0,
      elevation: 0.5,
      backgroundColor: Colors.white30,



    );
  }
}
