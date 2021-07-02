import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:link_on_demo/web_view.dart';

class PassPortPageContainer extends StatelessWidget {
  const PassPortPageContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebViewPage(
                  title: "Passport Seva ",
                  url:
                  "https://www.passportindia.gov.in/AppOnlineProject/welcomeLink ",
                )));
      },
      child: Padding(
        padding: EdgeInsets.all(20.0),
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
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.93,
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
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.002,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Colors.purple, Colors.white70],
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius:MediaQuery.of(context).size.height * 0.042,
                            child: SvgPicture.asset(
                              'images/govtLogo/Emblem_of_India.svg',
                              height: MediaQuery.of(context).size.height * 0.050
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.07,
                        ),
                        Text(
                          "Passport Seva ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width * 0.052,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.040,
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Book Appointment ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.035,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.004,
                            ),
                            Text(
                              "Renewal ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.035,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.004,
                            ),
                            Text(
                              "Track Application ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.035,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "Ministry of External Affairs ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width * 0.032,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.32,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            gradient: LinearGradient(colors: [
                              Colors.purple,
                              Colors.white70
                            ], stops: [
                              0.1,
                              0.9
                            ]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Enter ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                              Icon(Icons.arrow_forward_sharp)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
