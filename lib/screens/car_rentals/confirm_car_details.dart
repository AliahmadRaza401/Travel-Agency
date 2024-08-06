import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_agency/screens/car_rentals/car_box_widget.dart';
import 'package:travel_agency/screens/car_rentals/payment_methods.dart';
import 'package:travel_agency/utils/app_images.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class ConfirmCarDetailsScreen extends StatefulWidget {
  const ConfirmCarDetailsScreen({super.key});

  @override
  State<ConfirmCarDetailsScreen> createState() =>
      _ConfirmCarDetailsScreenState();
}

class _ConfirmCarDetailsScreenState extends State<ConfirmCarDetailsScreen> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: KColors.kPrimary,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45.rh,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 49.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Selected",
                      textStyle: KTextStyles().normal(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textColor: KColors.kBlack)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 49.0, right: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: "Needs a driver",
                      textStyle: KTextStyles().normal(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          textColor: KColors.kPrimary)),
                  CupertinoSwitch(
                    value: _switchValue,
                    activeColor: KColors.kPrimary,
                    thumbColor: const Color(0xff95BCCC),
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 56.rh,
            ),
            Row(
              children: [
                Container(
                  width: 213.rw,
                  height: 118.rh,
                  child: Image.asset(AppImages.carrangerover),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "RANGE ROVER",
                        textStyle: KTextStyles().normal(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            textColor: KColors.kPrimary)),
                    CustomText(
                        text: "\$200.00",
                        textStyle: KTextStyles().normal(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            textColor: KColors.kRed)),
                    Row(
                      children: [
                        CustomText(
                            text: "Rated:  ",
                            textStyle: KTextStyles().normal(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                textColor: KColors.kGrey)),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const Divider(
              height: 10,
              color: KColors.kGrey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 20.rh,
            ),
            Select_Car_Details("Selected: ", "1"),
            Select_Car_Details("Days:", "3"),
            Select_Car_Details("Price:", "\$600"),
            Select_Car_Details("Drivers Fee:", "\$50"),
            const Divider(
              height: 10,
              color: KColors.kGrey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41.0, right: 35, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: "TOTAL",
                      textStyle: KTextStyles().normal(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          textColor: KColors.kPrimary)),
                  CustomText(
                      text: "\$650",
                      textStyle: KTextStyles().normal(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          textColor: KColors.kBlack)),
                ],
              ),
            ),
            SizedBox(
              height: 31.rh,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: "LOCATION",
                      textStyle: KTextStyles().normal(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          textColor: KColors.kBlack)),
                ],
              ),
            ),
            SizedBox(
              height: 11.rh,
            ),
            IconTextButton(
                text: 'Street 203   House 348  City Kigali',
                width: 0.9,
                textcolor: KColors.kBlack.withOpacity(0.2),
                color: KColors.kGrey.withOpacity(0.2),
                icon: Icons.location_on_outlined,
                function: () {}),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 21.0, vertical: 33),
              child: PrimaryButton(
                  text: 'Confirm',
                  width: double.infinity,
                  
                  function: () {
                    Get.to(() => const PaymentMethodsScreen());
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Select_Car_Details(String title, String details) {
    return Padding(
      padding: const EdgeInsets.only(left: 41.0, right: 35, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
              text: title,
              textStyle: KTextStyles().normal(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  textColor: KColors.kGrey)),
          CustomText(
              text: details,
              textStyle: KTextStyles().normal(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  textColor: KColors.kGrey)),
        ],
      ),
    );
  }
}
