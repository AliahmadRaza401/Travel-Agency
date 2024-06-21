import 'package:travel_agency/widgets/widgets_imports.dart';

class MyBooking extends StatelessWidget {
  const MyBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "My Booking Details", actions: []),
      body: Center(
          child: SizedBox(
        height: context.height,
        width: kWidth(.9),
        child: Column(
          children: [
            Image.asset(
              "assets/images/booking.png",
              height: kHeight(.25),
              width: kWidth(.85),
            ),
            heightBox(.02),
            Container(
              width: kWidth(.85),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kWidth(.04)),
                  color: KColors.kWhite,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(1, 1),
                        spreadRadius: 5,
                        color: KColors.kGrey.withOpacity(.1),
                        blurRadius: 5),
                  ]),
              padding: EdgeInsets.all(kWidth(.04)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: "City",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          textColor: KColors.kSubColor)),
                  CustomText(
                      text: "Location Of The Night Club",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          textColor: KColors.kTextColor)),
                  heightBox(.015),
                  CustomText(
                      text: "Reference Id",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          textColor: KColors.kSubColor)),
                  CustomText(
                      text: "#3421",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          textColor: KColors.kTextColor)),
                  heightBox(.015),
                  CustomText(
                      text: "Time and Date",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          textColor: KColors.kSubColor)),
                  CustomText(
                      text: "18:00 PM | 23 FEB,2024",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          textColor: KColors.kTextColor)),
                  heightBox(.015),
                  CustomText(
                      text: "Full Name",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          textColor: KColors.kSubColor)),
                  CustomText(
                      text: "Jhon Doe",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          textColor: KColors.kTextColor)),
                  heightBox(.015),
                  CustomText(
                      text: "Total Days",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          textColor: KColors.kSubColor)),
                  CustomText(
                      text: "6",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          textColor: KColors.kTextColor)),
                  heightBox(.015),
                  CustomText(
                      text: "Total Persons",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          textColor: KColors.kSubColor)),
                  CustomText(
                      text: "4",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          textColor: KColors.kTextColor)),
                  heightBox(.015),
                  CustomText(
                      text: "Total Price",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          textColor: KColors.kSubColor)),
                  CustomText(
                      text: "\$1700.00",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          textColor: KColors.kTextColor)),
                  heightBox(.015),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  height: kHeight(.054),
                  padding: EdgeInsets.symmetric(
                    horizontal: kWidth(.06),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: KColors.kPrimary),
                      borderRadius: BorderRadius.circular(kWidth(.03))),
                  child: Image.asset(
                    "assets/images/button.png",
                    height: kHeight(.04),
                  ),
                ),
                widthBox(.02),
                PrimaryButton(
                  width: .6,
                  text: "Download Document",
                  function: () {},
                )
              ],
            ),
            heightBox(.1),
          ],
        ),
      )),
    );
  }
}
