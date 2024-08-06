import 'package:flexify/flexify.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

// ignore: must_be_immutable
class CarBox extends StatelessWidget {
  // final CarRentalsHomeController controller;
  // final int index;
  final String carimage;
  final String? carname;
  final String carprice;
  Function? onTap;
  CarBox({
    super.key,
    required this.carimage,
    this.carname,
    required this.carprice,
    this.onTap,
    // required this.controller,
    // required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: KColors.carboxcolor,
      shadowColor: KColors.kGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.rs)),
      child: Container(
        width: 152.rh,
        height: 169.rh,
        child: Column(
          children: [
            Image.asset(
              carimage,
              // width: 152.rw,
              height: 90.rh,
              // fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: carname.toString(),
                      // text: controller.travellingList[index].title.toString(),
                      textStyle: KTextStyles().normal(
                          textColor: KColors.kPrimary,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Container(
              // height: 250.h,
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: carprice,
                      // text: controller.travellingList[index].title.toString(),
                      textStyle: KTextStyles().normal(
                          textColor: KColors.kBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  RichText(
                    text: TextSpan(
                        text: '/day',
                        style: KTextStyles().normal(
                            textColor: KColors.kGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 14.0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: KColors.kRed,
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: KColors.kPrimary,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    // GestureDetector(
    //   onTap: () {
    //     // Get.toNamed("/blogpage", arguments: controller.travellingList[index]);
    //   },
    //   child: Container(
    //     // height: context.height,
    //     height: 169.rh,
    //     width: 152.rw,
    //     decoration: BoxDecoration(
    //         boxShadow: [
    //           BoxShadow(color: KColors.kGrey.withOpacity(.2), blurRadius: 5),
    //         ],
    //         color: KColors.kWhite,
    //         borderRadius: BorderRadius.circular(kWidth(.04))),
    //     padding: EdgeInsets.all(kWidth(.02)),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Stack(
    //           children: [
    //             ClipRRect(
    //               borderRadius: BorderRadius.circular(5.rs),
    //               child: Image.asset(
    //                 carimage,
    //                 // controller.travellingList[index].image,
    //                 // height: kHeight(.15),
    //                 // width: kWidth(.4),
    //                 height: 129.rh,
    //                 width: 194.rw,
    //                 fit: BoxFit.fill,
    //               ),
    //             ),
    //             Padding(
    //               padding:
    //                   EdgeInsets.only(right: kWidth(.02), top: kWidth(.02)),
    //               child: Align(
    //                 alignment: Alignment.topRight,
    //                 child: CircleAvatar(
    //                   radius: kHeight(.02),
    //                   backgroundColor: KColors.kWhite,
    //                   child: const Icon(
    //                     Icons.favorite_outline,
    //                     color: KColors.kBlack,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         heightBox(.01),
    //         CustomText(
    //             text: carprice,
    //             // text: controller.travellingList[index].title.toString(),
    //             textStyle: KTextStyles().normal(
    //                 textColor: KColors.kTextColor,
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w600)),
    //         Row(
    //           children: [
    //             const Icon(
    //               Icons.location_on_outlined,
    //               color: KColors.kGrey,
    //             ),
    //             SizedBox(
    //               width: kWidth(.3),
    //               child: CustomText(
    //                   alignText: TextAlign.left,
    //                   maxLines: 2,
    //                   text: 'ass',
    //                   // text: controller.travellingList[index].city.toString(),
    //                   textStyle: KTextStyles()
    //                       .normal(fontSize: 12, fontWeight: FontWeight.w500)),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
