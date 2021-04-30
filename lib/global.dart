import 'package:flutter/material.dart';


class HotelModel{

  final String hotelName, imagePath, cityName, price;


  HotelModel({this.hotelName, this.cityName, this.imagePath, this.price});
}

final List<HotelModel> hotelsList = [
  HotelModel(
    hotelName: "Hotel Crown Plaza",
    cityName: "Kathmandu",
    imagePath: "images/HotelCrownPlaza.jpg",
    price: "1500",

  ),

  HotelModel(
    hotelName: "Hotel Everest",
    cityName: "Kathmandu",
    imagePath: "images/HotelEverest.jpg",
    price: "2500",

  ),

  HotelModel(
    hotelName: "Hotel Hyatt",
    cityName: "Kathmandu",
    imagePath: "images/HotelHyatt.jpg",
    price:"2000",

  ),

  HotelModel(
    hotelName: "Hotel Sangrila",
    cityName: "Kathmandu",
    imagePath: "images/HotelSangrila.jpg",
    price: "2000",

  ),
  HotelModel(
    hotelName: "Hotel Soaltee",
    cityName: "Kathmandu",
    imagePath: "images/HotelSoaltee.jpg",
    price: "1800",
  )
];