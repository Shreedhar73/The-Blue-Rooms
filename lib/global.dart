import 'package:flutter/material.dart';


class HotelModel{
  final String hotelName, imagePath, cityName;

  HotelModel({this.hotelName, this.cityName, this.imagePath});
}

final List<HotelModel> hotelsList = [
  HotelModel(
    hotelName: "Hotel Crown Plaza",
    cityName: "Kathmandu",
    imagePath: "images/HotelCrownPlaza.jpg",

  ),

  HotelModel(
    hotelName: "Hotel Everest",
    cityName: "Kathmandu",
    imagePath: "images/HotelEverest.jpg",

  ),

  HotelModel(
    hotelName: "Hotel Hyatt",
    cityName: "Kathmandu",
    imagePath: "images/HotelHyatt.jpg",

  ),

  HotelModel(
    hotelName: "Hotel Sangrila",
    cityName: "Kathmandu",
    imagePath: "images/HotelSangrila.jpg",

  ),
  HotelModel(
    hotelName: "Hotel Soaltee",
    cityName: "Kathmandu",
    imagePath: "images/HotelSoaltee.jpg"
  )
];