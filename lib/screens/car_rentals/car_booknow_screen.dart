// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flexify/flexify.dart';
// import 'package:flutter/material.dart';
// import 'package:travel_agency/screens/car_rentals/car_rentals_home.dart';
// import 'package:travel_agency/screens/car_rentals/dot_controller.dart';
// import 'package:travel_agency/utils/app_images.dart';
// import 'package:travel_agency/widgets/widgets_imports.dart';

// class CarBooknowScreen extends StatefulWidget {
//   const CarBooknowScreen({super.key});

//   @override
//   State<CarBooknowScreen> createState() => _CarBooknowScreenState();
// }

// class _CarBooknowScreenState extends State<CarBooknowScreen> {
//   final DotsController dotsController = Get.put(DotsController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: KColors.kWhite,
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Column(
//               children: [
//                 SizedBox(
//                     height:
//                         447.rh), // Adjust the height according to your layout
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomText(
//                         text: "Range Rover",
//                         textStyle: KTextStyles()
//                             .normal(fontSize: 16, fontWeight: FontWeight.w500),
//                       ),
//                       CustomText(
//                         text: "\$200.00",
//                         textStyle: KTextStyles().normal(
//                             fontSize: 12,
//                             textColor: KColors.kRed,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     ],
//                   ),
//                 ),

//                 heightBox(.02),
//                 SizedBox(
//                   height: kHeight(.1),
//                   width: kWidth(1),
//                   child: ListView.separated(
//                     padding: const EdgeInsets.all(0),
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           // Navigate based on index
//                           // if (index == 0) {
//                           //   // Get.to(() => CarRentalsHomeScreen());
//                           // } else if (index == 1) {
//                           //   // Get.toNamed("/hotelhome");
//                           // } else if (index == 2) {
//                           //   // Get.toNamed("/flightshome");
//                           // }
//                           // Update the dot position
//                           dotsController.updatePosition(index);
//                         },
//                         child: Row(
//                           children: [
//                             car_feature_widget('Transition', 'Automatic'),
//                             car_feature_widget('Speed', '200kmph'),
//                           ],
//                         ),
//                       );
//                     },
//                     separatorBuilder: (context, index) => widthBox(.03),
//                     itemCount: 2,
//                   ),
//                 )

//                 // SizedBox(
//                 //   height: kHeight(.1),
//                 //   width: kWidth(1),
//                 //   child: ListView.separated(
//                 //       padding: const EdgeInsets.all(0),
//                 //       shrinkWrap: true,
//                 //       scrollDirection: Axis.horizontal,
//                 //       itemBuilder: (context, index) {
//                 //         return GestureDetector(
//                 //             onTap: () {
//                 //               // Get.to(() => CarRentalsHomeScreen());
//                 //               // Get.toNamed("/hotelhome");
//                 //               // Get.toNamed("/flightshome");
//                 //             },
//                 //             child: Row(
//                 //               children: [
//                 //                 car_feature_widget('Transition', 'Automatic'),
//                 //                 car_feature_widget('Speed', ' 200kmph')
//                 //               ],
//                 //             ));
//                 //       },
//                 //       separatorBuilder: (context, index) => widthBox(.03),
//                 //       itemCount: 2),
//                 // ),

//                 // DotsIndicator(dotsCount: 3)
//               ],
//             ),
//           ),
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               width: double.infinity,
//               height: 426.rh, // You can adjust this height as needed
//               decoration: BoxDecoration(
//                 color: KColors.kPrimary,
//                 borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(45.rs),
//                   bottomLeft: Radius.circular(45.rs),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 59.rh,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Get.back();
//                           },
//                           child: Icon(
//                             Icons.arrow_back_ios,
//                             color: KColors.kWhite,
//                           ),
//                         ),
//                         Icon(
//                           Icons.more_vert,
//                           color: KColors.kWhite,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Image.asset(AppImages.carrangerover),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   car_feature_widget(String title, String subtitle) {
//     return Card(
//       color: KColors.carboxcolor,
//       elevation: 5,
//       shadowColor: KColors.kGrey,
//       child: Container(
//         width: 155.rw,
//         height: 89.rh,
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.rs)),
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 11.rh,
//             ),
//             CustomText(
//               text: title,
//               textStyle: KTextStyles().normal(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w700,
//                   textColor: KColors.kPrimary),
//             ),
//             SizedBox(
//               height: 7.rh,
//             ),
//             CustomText(
//               text: subtitle,
//               textStyle: KTextStyles().normal(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                   textColor: KColors.kBlack),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/screens/car_rentals/cart_controller.dart';
import 'package:travel_agency/screens/car_rentals/confirm_car_details.dart';
import 'package:travel_agency/screens/car_rentals/trending_car_screen.dart';
import 'package:travel_agency/utils/colors.dart';
import 'package:travel_agency/utils/app_images.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';
import 'package:travel_agency/screens/car_rentals/dot_controller.dart';

class CarBooknowScreen extends StatefulWidget {
  const CarBooknowScreen({super.key});

  @override
  State<CarBooknowScreen> createState() => _CarBooknowScreenState();
}

class _CarBooknowScreenState extends State<CarBooknowScreen> {
  final DotsController dotsController = Get.put(DotsController());
  final CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kWhite,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(
                  height: 447.rh, // Adjust the height according to your layout
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Range Rover",
                        textStyle: KTextStyles().normal(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CustomText(
                        text: "\$200.00",
                        textStyle: KTextStyles().normal(
                          fontSize: 12,
                          textColor: KColors.kRed,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                    height: 16.0), // Add some space between the elements
                SizedBox(
                  height: kHeight(.1),
                  width: kWidth(1),
                  child: ListView.separated(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Update the dot position

                          dotsController.updatePosition(index);
                          Get.to(() => TrendingCarScreen());
                        },
                        child: Row(
                          children: [
                            car_feature_widget('Transition', 'Automatic'),
                            car_feature_widget('Speed', '200kmph'),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => widthBox(.03),
                    itemCount: 3,
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

                SizedBox(
                  height: 11.rh,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'RENDER',
                        textStyle: KTextStyles().normal(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          textColor: KColors.kiconcolor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18.rh,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.0, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 48.rw,
                            height: 47.rh,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(AppImages.profilepick),
                          ),
                          SizedBox(
                            width: 11.rw,
                          ),
                          CustomText(
                            text: 'Lorem Ipsum',
                            textStyle: KTextStyles().normal(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              textColor: KColors.kiconcolor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 34.rw,
                            height: 32.rh,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(AppImages.commentsimg),
                          ),
                          SizedBox(
                            width: 15.rw,
                          ),
                          Container(
                            width: 23.rw,
                            height: 30.rh,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(AppImages.phoneimg),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 37.rh,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 37.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: cartController.increaseItemCount,
                        child: Container(
                          width: 43.rw,
                          height: 43.rh,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: KColors.kPrimary)),
                          child: Center(
                            child: CustomText(
                              text: '+',
                              textStyle: KTextStyles().normal(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                textColor: KColors.kPrimary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9.rw,
                      ),
                      Obx(
                        () => CustomText(
                          text: cartController.itemCount.value.toString(),
                          textStyle: KTextStyles().normal(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            textColor: KColors.kBlack,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9.rw,
                      ),
                      GestureDetector(
                        onTap: cartController.decreaseItemCount,
                        child: Container(
                          width: 43.rw,
                          height: 43.rh,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: KColors.kPrimary)),
                          child: Center(
                            child: CustomText(
                              text: '-',
                              textStyle: KTextStyles().normal(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                textColor: KColors.kPrimary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 14.rw,
                      ),
                      PrimaryButton(
                          text: 'BOOK NOW',
                          function: () {
                            Get.to(() => ConfirmCarDetailsScreen());
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 426.rh, // You can adjust this height as needed
              decoration: BoxDecoration(
                color: KColors.kPrimary,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(45.rs),
                  bottomLeft: Radius.circular(45.rs),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 59.rh,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: KColors.kWhite,
                          ),
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: KColors.kWhite,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(AppImages.carrangerover),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget car_feature_widget(String title, String subtitle) {
    return Card(
      color: KColors.carboxcolor,
      elevation: 5,
      shadowColor: KColors.kGrey,
      child: Container(
        width: 155.rw,
        height: 89.rh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.rs),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 11.rh,
            ),
            CustomText(
              text: title,
              textStyle: KTextStyles().normal(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                textColor: KColors.kPrimary,
              ),
            ),
            SizedBox(
              height: 7.rh,
            ),
            CustomText(
              text: subtitle,
              textStyle: KTextStyles().normal(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                textColor: KColors.kBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
