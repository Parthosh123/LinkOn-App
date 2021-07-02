import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:link_on_demo/web_view.dart';

class JobsPageContainer extends StatelessWidget {
  const JobsPageContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebViewPage(title: "Jobs  ",url: "https://services.india.gov.in/ ",)));

    },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20.0),
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
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width * 0.84,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blueGrey[800],
                Colors.black54,
              ],
              stops: [0.01, 1.0],
            ),),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.red[300]
                      ],
                    )
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: MediaQuery.of(context).size.height * 0.040,
                  child: SvgPicture.asset('images/iconLogo/office-svgrepo-com.svg',
                    height: MediaQuery.of(context).size.height * 0.042,
                    color: Colors.white,),
                ),
              ),

              Text(" Jobs ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize:  MediaQuery.of(context).size.width * 0.055,
                    fontWeight: FontWeight.w900
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05
              ),
            ],
          ),
        ),
      ),
    );
  }
}
