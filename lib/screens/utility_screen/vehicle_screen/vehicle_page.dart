import 'package:flutter/material.dart';
import 'package:link_on_demo/web_view.dart';


class VehiclePage extends StatelessWidget {

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
            ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Vehicle ',
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.080,
                        color: Colors.white),),
                  Text('Services ',
                    style: TextStyle(fontSize:  MediaQuery.of(context).size.width * 0.080,
                        color: Colors.white),),
                  Icon(Icons.directions_bus_outlined,
                    size: MediaQuery.of(context).size.height * 0.060,
                    color: Colors.white,),
                ],

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebViewPage(title: "LLR Application Form ",url: "https://sarathi.parivahan.gov.in/",)));
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
                        'LLR Application Form', style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.040,
                          color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward,
                          size: MediaQuery.of(context).size.width * 0.080
                          ,color: Colors.white),
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
                      MaterialPageRoute(builder: (context) => WebViewPage(title: "Vahan CitizenShip Services ",url: "https://vahan.parivahan.gov.in/vahanservice/vahan/ui/statevalidation/homepage.xhtml",)));
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
                        'Vahan CitizenShip Service',
                        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.040,
                            color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward,
                          size: MediaQuery.of(context).size.width * 0.080,
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