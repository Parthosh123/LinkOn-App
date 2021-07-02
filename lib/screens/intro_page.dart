import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class  SliderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          //1st Image of Slider
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            width: MediaQuery.of(context).size.width * 0.70,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.yellow[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded,size: MediaQuery.of(context).size.height * 0.14,
                  color: Colors.white,),
                Icon(Icons.list,size: MediaQuery.of(context).size.height * 0.14,
                    color: Colors.white),
              ],
            ),
          ),

          //2nd Image of Slider
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width * 0.70,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.yellow[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded,size:MediaQuery.of(context).size.height * 0.14,
                  color: Colors.white,),
                Icon(Icons.list,size: MediaQuery.of(context).size.height * 0.14,
                    color: Colors.white),
              ],
            ),
          ),

          //3rd Image of Slider
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width * 0.70,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.yellow[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded,size: MediaQuery.of(context).size.height * 0.14,
                  color: Colors.white,),
                Icon(Icons.list,size: MediaQuery.of(context).size.height * 0.14,
                    color: Colors.white),
              ],
            ),
          ),
        ],

        //Slider Container properties
        options: CarouselOptions(
          height:MediaQuery.of(context).size.height * 0.18,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.ease,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
        ),
      );


  }
}