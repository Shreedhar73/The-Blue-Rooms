import 'package:flutter/material.dart';
import 'package:hotel_booking/global.dart';
import 'package:hotel_booking/Pages/Home.dart';


class DetailsPage extends StatelessWidget {
  final int id;
  const DetailsPage({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: Column(
                  children: [
                    Expanded(child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.asset(hotelsList[id].imagePath,
                          fit: BoxFit.cover,),

                        ),

                        Positioned(
                          
                          left: 6,
                          right: 6,
                          child: IconButton(
                            icon: Icon(Icons.chevron_left_outlined,
                            color: Colors.white,),
                            onPressed: () => Navigator.pop(context),
                          ),
                          
                          
                        )
                      ],
                    ))
                  ],
                )
            )
          ],
        ),
      ),

    );
  }
}
