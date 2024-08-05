import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_agency/utils/app_images.dart';
import 'package:travel_agency/utils/colors.dart';
import 'package:flexify/flexify.dart';
class CarRentalsHomeScreen extends StatefulWidget {
  const CarRentalsHomeScreen({super.key});

  @override
  State<CarRentalsHomeScreen> createState() => _CarRentalsHomeScreenState();
}

class _CarRentalsHomeScreenState extends State<CarRentalsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kWhite,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 28.0),
          child: Icon(
            Icons.menu_rounded,
            color: KColors.kiconcolor,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            // width: 357,
            // height: 158,
            child: Image.asset(
              AppImages.carsliderimg,
              width: 357.rw,
              height: 158.rh,
            ),
          )
        ],
      ),
    );
  }
}
