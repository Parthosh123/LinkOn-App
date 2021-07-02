import 'package:flutter/material.dart';
import 'package:link_on_demo/web_view.dart';

class SkillSetScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width* 1.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[900],
                Colors.blueGrey[900],
                Colors.blueGrey
                // Colors.white.withOpacity(1.0)
              ],
              stops: [0.0, 0.65, 0.99],
            )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Skill  ',
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.080,
                        color: Colors.white),),
                  Text('Set',
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.080,
                        color: Colors.white),),
                  Icon(Icons.star_border_purple500_outlined, size: MediaQuery.of(context).size.height * 0.060,
                    color: Colors.white,),
                ],

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebViewPage(title: "TN Skill Set ",url: "https://www.tnskill.tn.gov.in/ ",)));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.090,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text(
                        'TN Skill Set', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.040,
                          color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward,
                          size: MediaQuery.of(context).size.width * 0.080,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebViewPage(title: "ICT Academy Skill Set ",url: "http://www.ictacademy.in/pages/Index.aspx",)));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.090,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text(
                        'ICT Academy Skill Set', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.040,
                          color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward, size:MediaQuery.of(context).size.width * 0.080,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebViewPage(title: "Digital Library ",url: "https://ndl.iitkgp.ac.in/  ",)));
                },
                child: Container(
                  height:MediaQuery.of(context).size.height * 0.090,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text('Digital Library', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.040,
                          color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward, size: MediaQuery.of(context).size.width * 0.080,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}