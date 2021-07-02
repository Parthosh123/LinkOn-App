import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:link_on_demo/web_view.dart';

class ElectricityPageContainer extends StatelessWidget {
  const ElectricityPageContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebViewPage(title: "Electricity ",url: "https://www.tnebnet.org/atm/login ",)));

    },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft:Radius.circular(20.0),),
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
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width * 0.38,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft:Radius.circular(20.0) ),
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
                        Colors.blueAccent,
                        Colors.blue[100]
                      ],
                    )
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: MediaQuery.of(context).size.height * 0.052,
                  child: SvgPicture.asset('images/iconLogo/electricity-svgrepo-com (1).svg',
                    height: MediaQuery.of(context).size.height * 0.042,
                    color: Colors.white,),
                ),
              ),
              Text(" Electricity ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize:  MediaQuery.of(context).size.width * 0.042,
                    fontWeight: FontWeight.w900
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
