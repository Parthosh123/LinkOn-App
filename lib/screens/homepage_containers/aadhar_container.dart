import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:link_on_demo/web_view.dart';

class AadhaarPageContainer extends StatelessWidget {
  const AadhaarPageContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebViewPage(
                  title: "Aadhar Service ",
                  url: "https://uidai.gov.in/ ",
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
                        SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue[900],
                                  Colors.white70
                                ],
                              ),
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: MediaQuery.of(context).size.height * 0.042,
                            child: SvgPicture.asset(
                              'images/govtLogo/Aadhaar_Logo.svg',
                                height: MediaQuery.of(context).size.height * 0.038
                            ),
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.07,),
                        Text(
                          "Aadhaar Services ",
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
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Update ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.035,
                              ),
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height * 0.004,
                            ),
                            Text(
                              "Download ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.035,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.004,
                            ),
                            Text(
                              "KYC Details ",
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
                            "UIDAI ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width * 0.035,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.32,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)),
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue[900],
                                Colors.white70
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Enter ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.035,
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
