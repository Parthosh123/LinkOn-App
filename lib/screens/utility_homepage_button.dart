import 'package:flutter/material.dart';
import 'package:link_on_demo/screens/utility_screen/utility_general_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UtilityHomePageButton extends StatelessWidget {
  const UtilityHomePageButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap:(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>UtilityGeneralPage()));
    },
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        height: 85.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.blue[600],
                Colors.blueAccent,
                Colors.blueGrey[400],
              ],
              stops: [0.1, 0.5, 0.9],
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar( radius: 30.0,
                backgroundColor: Colors.white70.withOpacity(0.5),
                child: SvgPicture.asset('images/iconLogo/electricity-svgrepo-com (1).svg',height: 30.0,)),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Utility ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
                Text('Services ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
