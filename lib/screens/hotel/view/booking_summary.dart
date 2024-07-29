import 'package:flutter/cupertino.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class BookingSummary extends StatelessWidget {
  const BookingSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: context.width,
          child: Column(
            children: [
              heightBox(.07),
              SizedBox(
                width: kWidth(.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: KColors.kWhite,
                          border: Border.all(
                            color: KColors.kTextColor.withOpacity(.2),
                          ),
                          borderRadius: BorderRadius.circular(kWidth(.04)),
                        ),
                        padding: EdgeInsets.all(kWidth(.02)),
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                    CustomText(
                        text: "Booking Summary",
                        textStyle: KTextStyles()
                            .normal(fontSize: 16, fontWeight: FontWeight.bold)),
                    Icon(null),
                  ],
                ),
              ),
              SizedBox(
                width: kWidth(.8),
                child: Column(
                  children: [
                    heightBox(.04),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/hotelpic.png",
                          height: kHeight(.1),
                          width: kWidth(.3),
                          fit: BoxFit.fill,
                        ),
                        widthBox(.04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: "AYANA Resort",
                                textStyle: KTextStyles().normal(
                                    fontSize: 16, fontWeight: FontWeight.w700)),
                            heightBox(.005),
                            CustomText(
                                text: "Bali, Indonesia",
                                textStyle: KTextStyles().normal(
                                  fontSize: 10,
                                )),
                            heightBox(.005),
                            CustomRichText(
                                focusedFontSize: 16,
                                normalFontSize: 16,
                                focusPosition: FocusPosition.start,
                                normalColor: KColors.kTextColor.withOpacity(.5),
                                focusedColor: KColors.kPrimary,
                                normalText: " /night",
                                focusedText: "\$200.7")
                          ],
                        )
                      ],
                    ),
                    heightBox(.06),
                    TextTile(
                      title: "Booking Date",
                      subttile: "1-Oct-2023",
                    ),
                    heightBox(.01),
                    TextTile(
                      title: "Check-in",
                      subttile: "24-Oct-2023",
                    ),
                    heightBox(.01),
                    TextTile(
                      title: "Check-out",
                      subttile: "26-Oct-2023",
                    ),
                    heightBox(.01),
                    TextTile(
                      title: "Chcek-out",
                      subttile: "3",
                    ),
                    heightBox(.01),
                    TextTile(
                      title: "Room(s)",
                      subttile: "1",
                    ),
                    heightBox(.01),
                  ],
                ),
              ),
              heightBox(.02),
              Divider(
                thickness: 1,
                color: KColors.kTextColor,
              ),
              heightBox(.02),
              SizedBox(
                width: kWidth(.8),
                child: Column(
                  children: [
                    TextTile(
                      title: "Amount",
                      subttile: "\$350 x 2",
                    ),
                    heightBox(.01),
                    TextTile(
                      title: "Tax",
                      subttile: "\$30",
                    ),
                    heightBox(.01),
                    TextTile(
                      title: "Total",
                      subttile: "\$730",
                    ),
                    heightBox(.01),
                  ],
                ),
              ),
              Spacer(),
              PrimaryButton(
                width: .9,
                text: "Continue To Payment",
                function: () {
                  Get.toNamed("/hotelpaymentdetails");
                },
              ),
              heightBox(.04),
            ],
          ),
        ),
      ),
    );
  }
}

class TextTile extends StatelessWidget {
  final String title, subttile;
  const TextTile({
    super.key,
    required this.title,
    required this.subttile,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
            text: title,
            textStyle: KTextStyles()
                .normal(fontSize: 15, fontWeight: FontWeight.w700)),
        CustomText(
            text: subttile,
            textStyle: KTextStyles().normal(
              textColor: KColors.kTextColor.withOpacity(.5),
              fontSize: 16,
            )),
      ],
    );
  }
}
