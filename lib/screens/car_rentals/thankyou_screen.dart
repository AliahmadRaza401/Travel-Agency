import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travel_agency/utils/app_images.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class ThankyouScreen extends StatelessWidget {
  const ThankyouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.rh,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        // color: Color(oxff78D6C7),
                        color: Color(0xff78D6C7),
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Color(0xff78D6C7),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 56.rh,
              ),
              Container(
                width: 106,
                height: 95,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  AppImages.cardthankyou,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30.rh,
              ),
              CustomText(
                text: "Thank you",
                textStyle: KTextStyles()
                    .normal(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 300.rh,
              ),
              Padding(
                padding: EdgeInsets.only(left: 31, right: 31),
                child: PrimaryButton(
                    text: "Comfirm",
                    color: KColors.kGrey,
                    width: double.infinity,
                    function: () {
                      Get.to(() => HomeScreen());
                    }),
              ),
              SizedBox(
                height: 40.rh,
              ),
              Padding(
                padding: EdgeInsets.only(left: 31, right: 31),
                child: PrimaryButton(
                    text: "Go Back",
                    width: double.infinity,
                    function: () {
                      Get.back();
                    }),
              ),
            ],
          ),
        ));
  }
}
