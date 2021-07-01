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
                height: 15.0,
              ),
              Padding(
                padding: MediaQuery.of(context).padding*1.0,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 35.0,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      " Utility Services ",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Pay your Utility Bills or Manage your services",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12.0,
                ),
              ),SizedBox(
                height:  20.0,
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
                          height: 10.0,
                        ),
                        TaxPayPageContainer(),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        RevenuePageContainer(),
                        SizedBox(
                          height: 10.0,
                        ),
                        VehiclePageContainer(),
                        SizedBox(
                          height: 10.0,
                        ),
                        BusBookingPageContainer(),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              WaterTaxPageContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
