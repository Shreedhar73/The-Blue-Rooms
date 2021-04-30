import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/Pages/Details.dart';
import 'package:hotel_booking/global.dart';
import 'package:hotel_booking/Widgets/appBar.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(),
      drawer: Drawer(),
      body: _buildBody(context),


    );
  }
}

_buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.0,),
            Text(
              "Welcome To BlueRooms",
              style: TextStyle(color: Colors.black54, fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),

            Text(
              "Pick your Location",
              style: TextStyle(color: Colors.black54, fontSize: 19.0,
                  fontWeight: FontWeight.w300),
            ),

            SizedBox(height: 20,),


            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Colors.white,

              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search For Hotels, Resorts, Clubs...",
                  prefixIcon: Icon(Icons.search_rounded, color: Colors.blue,),
                  border: InputBorder.none,




                ),

              ),
            ),
            SizedBox(height: 50,),

            Text("Quick Links",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 25,
            ),),

            SizedBox(height: 30.0),




            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelsList.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () => Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(id : i),
                      )
                      ),
                      child: Card(
                        color: Colors.white70,
                        elevation: 20.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ) ,
                        borderOnForeground: true,


                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Image.asset(hotelsList[i].imagePath,
                                fit: BoxFit.cover,) ,

                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(hotelsList[i].hotelName),
                                      Text(hotelsList[i].cityName),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),


                    );

                  },
              ),
            ),

          ]
      ),
    );
  }








