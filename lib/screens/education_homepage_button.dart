import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:link_on_demo/screens/education_screen/education_general_page.dart';

class EducationalHomePageButton extends StatelessWidget {
  const EducationalHomePageButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>EducationGeneralPage()));
    },
      child: Container(
        margin: EdgeInsets.only(right: 20.0),
        height: MediaQuery.of(context).size.height * 0.095,
        width: MediaQuery.of(context).size.width * 0.43,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.yellow[600],
                Colors.orangeAccent,
                Colors.deepOrange[400],
              ],
              stops: [0.1, 0.5, 0.9],
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar( radius:MediaQuery.of(context).size.height * 0.035,
                backgroundColor: Colors.white70.withOpacity(0.5),
                child: SvgPicture.asset('images/iconLogo/pencil-svgrepo-com.svg',height: 30.0,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Educational ',
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize:MediaQuery.of(context).size.width * 0.035),),
                Text('Services ',
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize:MediaQuery.of(context).size.width * 0.035),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
