import 'package:flutter/material.dart';
import 'package:link_on_demo/screens/home_page.dart';
import 'package:link_on_demo/screens/intro_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin<SplashScreen> {

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomePage() ));
      });
    } else {
      await prefs.setBool('seen', true);
      Future.delayed(Duration(seconds: 2),(){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => IntroScreen() ));
      });
    }
  }
  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/link-on-logo-only.png'),height: 300.0,),
            SizedBox(
              height: 20.0,
            ),
            Text(" LINK_ON ",style: TextStyle(color: Colors.yellowAccent[700],fontSize: 52.0,fontWeight: FontWeight.w900),),
          ],
        ),
      ),
    );
  }
}


class IntroScreen extends StatefulWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.transparent,

            ),
            Container(
              height: 250.0,
              width: double.infinity,
              color: Colors.transparent,
              child: SliderCard(),
            ),
            Container(
              height: 250.0,
              width: double.infinity,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Link Your Life",
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "LINK_ON app makes you to simply E- Services all in one Destination",
                      style: TextStyle(color: Colors.white70,fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    GestureDetector( onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()),(e) => false);
                    },
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          PhysicalModel(color: Colors.black ,elevation: 3.0,
                            shape: BoxShape.circle,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[500],
                              radius: 35.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal:25.0),
                            child: Text(
                              "  Get Started",
                              style: TextStyle(color: Colors.white,fontSize: 28.0,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // body: IntroSlider(
      //   slides: this.slides,
      //   onDonePress: this.onDonePress,
      //   renderDoneBtn: this.renderDoneBtn(),
      //   showDotIndicator: false,
      //   doneButtonStyle: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.all(Colors.grey),
      //   ),
      // ),
    );
  }
}
