import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_agency/screens/car_rentals/car_booknow_screen.dart';
import 'package:travel_agency/screens/car_rentals/car_box_widget.dart';
import 'package:travel_agency/utils/app_images.dart';
import 'package:travel_agency/utils/colors.dart';
import 'package:flexify/flexify.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

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
          child: GestureDetector(
            onTap: (){
              Get.offAllNamed('/');
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: KColors.kiconcolor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16),
            height: 158.rh,
            width: 357.rw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.rs),
                color: KColors.kBlack),
            child: Image.asset(
              AppImages.carsliderimg,
            ),
          ),
          SizedBox(
            height: 50.rh,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.0, right: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 83.rw,
                  height: 26.rh,
                  decoration: BoxDecoration(
                    color: KColors.kPrimary,
                    borderRadius: BorderRadius.circular(5.rs),
                  ),
                  child: CustomText(
                      text: "family cars",
                      alignText: TextAlign.center,
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          textColor: Colors.white,
                          fontWeight: FontWeight.w700)),
                ),
                Container(
                  width: 83.rw,
                  height: 26.rh,
                  decoration: BoxDecoration(
                    color: KColors.kWhite,
                    border: Border.all(color: KColors.kiconcolor),
                    borderRadius: BorderRadius.circular(5.rs),
                  ),
                  child: CustomText(
                      text: "Cheap cars",
                      alignText: TextAlign.center,
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          textColor: Colors.black,
                          fontWeight: FontWeight.w400)),
                ),
                Container(
                  width: 83.rw,
                  height: 26.rh,
                  decoration: BoxDecoration(
                    color: KColors.kWhite,
                    border: Border.all(color: KColors.kiconcolor),
                    borderRadius: BorderRadius.circular(5.rs),
                  ),
                  child: CustomText(
                      text: "Luxuly cars",
                      alignText: TextAlign.center,
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          textColor: Colors.black,
                          fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                    width: 29.rw,
                    height: 27.rh,
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: KColors.highgreycolor,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 36.rh,
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.0, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "Cars Available Near You",
                    textStyle: KTextStyles()
                        .normal(fontSize: 20, fontWeight: FontWeight.w500)),
                CustomText(
                    text: "View more",
                    textStyle: KTextStyles().normal(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: KColors.kPrimary)),
              ],
            ),
          ),
          // Container(
          //   width: 152.rw,
          //   height: 169.rh,
          // ),
          heightBox(.02),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => CarBooknowScreen());
                  },
                  child: CarBox(
                      carimage: AppImages.carimgcivi,
                      carname: 'TOYOTA',
                      carprice: '\$300'),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => CarBooknowScreen());

                  },
                  child: CarBox(
                      carimage: AppImages.carlamborghini,
                      carname: 'LAMBORGHINI',
                      carprice: '\$550'),
                ),
              ],
            ),
          ),
          heightBox(.02),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => CarBooknowScreen());

                  },
                  child: CarBox(
                      carimage: AppImages.carrangerover,
                      carname: 'RANGE ROVER',
                      carprice: '\$150'),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => CarBooknowScreen());

                  },
                  child: CarBox(
                      carimage: AppImages.cartesla,
                      carname: 'TESLA',
                      carprice: '\$150'),
                ),
              ],
            ),
          )


        ],
      ),
    );
  }
}
