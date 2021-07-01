import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class  SliderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          //1st Image of Slider
          Container(
            height: 150.0,
            width: 300.0,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.yellow[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded,size: 140.0,color: Colors.white,),
                Icon(Icons.list,size: 140.0,color: Colors.white),
              ],
            ),
          ),

          //2nd Image of Slider
          Container(
            height: 150.0,
            width: 300.0,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.yellow[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded,size: 140.0,color: Colors.white,),
                Icon(Icons.list,size: 140.0,color: Colors.white),
              ],
            ),
          ),

          //3rd Image of Slider
          Container(
            height: 150.0,
            width: 300.0,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.yellow[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded,size: 140.0,color: Colors.white,),
                Icon(Icons.list,size: 140.0,color: Colors.white),
              ],
            ),
          ),
        ],

        //Slider Container properties
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.ease,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
        ),
      );


  }
}