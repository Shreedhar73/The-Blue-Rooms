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
                          

                          left: 5,
                          right: 5,
                          child: IconButton(
                            icon: Icon(Icons.chevron_left_outlined,
                            color: Colors.white,
                            size: 30,),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),

                        Positioned(

                          left: 0,
                          right: 0,
                          bottom: 0,
                          height: 90,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.blue.shade200,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter
                              )
                            ),
                          ),


                        ),

                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(hotelsList[id].hotelName,
                                  style: Theme.of(context).textTheme.display1.apply(
                                    color: Colors.blueGrey,
                                  ),
                                  ),
                                  Text(hotelsList[id].cityName,
                                  style: Theme.of(context).textTheme.display1.apply(
                                    color: Colors.blueGrey
                                  ),),

                                  Spacer(),

                                  Text("Price:" + hotelsList[id].price,
                                    style: Theme.of(context).textTheme.display1.apply(
                                      color: Colors.black,

                                    ),
                                  ),

                                ],
                              ),
                            )
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
