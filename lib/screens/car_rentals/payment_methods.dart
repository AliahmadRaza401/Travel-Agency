import 'package:dots_indicator/dots_indicator.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:travel_agency/screens/car_rentals/credit_card_screen.dart';
import 'package:travel_agency/screens/car_rentals/dot_controller.dart';
import 'package:travel_agency/utils/app_images.dart';
import 'package:travel_agency/utils/colors.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  final DotsController dotsController = Get.put(DotsController());

  bool _switchValue = true;

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 21.0),
                  child: Text(
                    'Payment Methods',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: KColors.kBlack),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 11.rh,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 14),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        dotsController.updatePosition(0);
                      },
                      child: Container(
                        width: 108,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFFFCE31),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 83,
                            height: 62,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.mobliepay),
                                fit: BoxFit
                                    .cover, // Ensures the image fits the smaller container
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        dotsController.updatePosition(1);
                      },
                      child: Container(
                        width: 108,
                        height: 58,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFEB001B),
                            style: BorderStyle.solid,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 57,
                            height: 38,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.logos_mastercard),
                                fit: BoxFit
                                    .cover, // Ensures the image fits the smaller container
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        dotsController.updatePosition(2);
                      },
                      child: Container(
                        width: 108,
                        height: 58,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF496CC6),
                            style: BorderStyle.solid,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 41,
                            height: 39,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.logos_paypal),
                                fit: BoxFit
                                    .cover, // Ensures the image fits the smaller container
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Obx(
              () => DotsIndicator(
                dotsCount: dotsController.totalDots,
                position: dotsController.currentPosition.value,
                decorator: DotsDecorator(
                  activeColor: KColors.kPrimary,
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'OUR CODE',
                    style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 15,
                        color: KColors.kPrimary),
                  ),
                  Text(
                    '1001110',
                    style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 15,
                        color: Color(0xff838383)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff838383)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff838383)),
                  ),
                  hintText: 'Sim Name:',
                  hintStyle: TextStyle(
                      fontFamily: 'PT Sans',
                      fontSize: 14,
                      color: Color(0xff838383)),
                  suffix: Text(
                    'Lorum Ipsum',
                    style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 13,
                        color: Color(0xff838383)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff838383)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff838383)),
                    ),
                    hintText: 'Phone Number:',
                    hintStyle: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 14,
                        color: Color(0xff838383)),
                    // suffixText: '+250 000 11 0011',
                    suffix: CustomText(
                      text: "+250 000 11 0011",
                      textStyle: TextStyle(
                          fontFamily: 'PT Sans',
                          fontSize: 13,
                          color: Color(0xff838383)),
                    )),

                // suffix: Text(
                //   '+250 000 11 0011',
                //   style: TextStyle(
                //       fontFamily: 'PT Sans',
                //       fontSize: 13,
                //       color: Color(0xff838383)),
                // ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff838383)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff838383)),
                  ),
                  hintText: 'Remember This Info:',
                  hintStyle: const TextStyle(
                      fontFamily: 'PT Sans',
                      fontSize: 14,
                      color: Color(0xff838383)),
                  suffixIcon: CupertinoSwitch(
                    value: _switchValue,
                    activeColor: KColors.kPrimary,
                    thumbColor: const Color(0xff95BCCC),
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 21.0, vertical: 33),
              child: PrimaryButton(
                  text: 'Pay',
                  width: double.infinity,
                  function: () {
                    Get.to(() => CreditCardScreen());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
