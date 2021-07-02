import 'package:flutter/material.dart';
import 'package:link_on_demo/screens/education_homepage_button.dart';
import 'package:link_on_demo/screens/homepage_containers/Voter_container.dart';
import 'package:link_on_demo/screens/homepage_containers/pan_container.dart';
import 'package:link_on_demo/screens/homepage_containers/passport_container.dart';
import 'package:link_on_demo/screens/homepage_containers/ration_container.dart';
import 'package:link_on_demo/screens/utility_homepage_button.dart';
import 'package:link_on_demo/screens/homepage_containers/aadhar_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Warning'),
          content: Text('Do you really want to exit'),
          actions: [
            TextButton(
              child: Text('Yes'),
              onPressed: () => Navigator.pop(context, true),
            ),
            TextButton(
              child: Text('No'),
              onPressed: () => Navigator.pop(context, false),
            ),
          ],
        ),
      ),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          width: MediaQuery.of(context).size.width * 1.0,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 20.0),
                  child: Text(
                    "LINK_ON",
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: MediaQuery.of(context).padding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UtilityHomePageButton(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.035,
                      ),
                      EducationalHomePageButton(),
                    ],
                  ),
                ),
                AadhaarPageContainer(),
                PanPageContainer(),
                RationPageContainer(),
                VoterPageContainer(),
                PassPortPageContainer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 1.0,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('images/mylogo (3).jpeg'),
                          height: MediaQuery.of(context).size.height * 0.045,
                        ),
                        Image(
                          image: AssetImage('images/mylogo (1).jpeg'),
                          height: MediaQuery.of(context).size.height * 0.045,
                        ),
                        Image(
                          image: AssetImage('images/mylogo (2).jpeg'),
                          height: MediaQuery.of(context).size.height * 0.045,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
