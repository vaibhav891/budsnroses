import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Icon(Icons.ac_unit),
        Icon(Icons.access_alarm),
        Icon(Icons.accessibility),
        Icon(Icons.accessible_forward),
        Icon(Icons.account_balance),
      ],
      options: CarouselOptions(initialPage: 0, autoPlay: true,height: 150),
    );
  }
}
