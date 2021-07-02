import 'package:flutter/material.dart';
import 'package:link_on_demo/screens/utility_screen/bus_booking_container.dart';
import 'package:link_on_demo/screens/utility_screen/electricity_conatiner.dart';
import 'package:link_on_demo/screens/utility_screen/revenue_container.dart';
import 'package:link_on_demo/screens/utility_screen/tax_container.dart';
import 'package:link_on_demo/screens/utility_screen/vehicle_container.dart';
import 'package:link_on_demo/screens/utility_screen/water_tax_container.dart';


class UtilityGeneralPage extends StatelessWidget {
  UtilityGeneralPage({Key key}) : super(key: key);

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
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Padding(
                padding: MediaQuery.of(context).padding*1.0,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.020,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size:MediaQuery.of(context).size.width * 0.090,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.020,
                    ),
                    Text(
                      " Utility Services ",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                "Pay your Utility Bills or Manage your services",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: MediaQuery.of(context).size.width * 0.028,
                ),
              ),SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ElectricityPageContainer(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.010,
                        ),
                        TaxPayPageContainer(),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.022,
                    ),
                    Column(
                      children: [
                        RevenuePageContainer(),
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.010,
                        ),
                        VehiclePageContainer(),
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.010,
                        ),
                        BusBookingPageContainer(),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              WaterTaxPageContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
