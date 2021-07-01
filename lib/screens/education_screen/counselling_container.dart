import 'package:flutter/material.dart';
import 'package:link_on_demo/web_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounsellingPAgeContainer extends StatelessWidget {
  const CounsellingPAgeContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebViewPage(title: "Counselling ",url: "https://www.tneaonline.org/ ",)));

    },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(
                4.0,
                4.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 0.0,
            ),
            BoxShadow(
              color: Colors.blueGrey[800],
              offset: Offset(
                2.5,
                2.5,
              ),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blueGrey[800],
                  Colors.black54,
                ],
                stops: [0.01, 1.0],
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.orangeAccent[100],
                        Colors.orangeAccent[400]
                      ],
                    )
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50.0,
                  child: SvgPicture.asset('images/iconLogo/customer-reviews-svgrepo-com.svg',height: 40.0,color: Colors.white,),
                ),
              ),
              Text(" Counselling ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
