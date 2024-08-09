import 'package:travel_agency/widgets/widgets_imports.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(.07),
              Row(
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
                      child: const Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                  CustomText(
                      text: "Detail",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, fontWeight: FontWeight.bold)),
                  Container(
                    decoration: BoxDecoration(
                      color: KColors.kWhite,
                      border: Border.all(
                        color: KColors.kTextColor.withOpacity(.2),
                      ),
                      borderRadius: BorderRadius.circular(kWidth(.04)),
                    ),
                    padding: EdgeInsets.all(kWidth(.02)),
                    child: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
              heightBox(.02),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/hotelpic.png",
                    height: kHeight(.3),
                    width: context.width,
                  ),
                  Padding(
                    padding: EdgeInsets.all(kWidth(.04)),
                    child: const Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        backgroundColor: KColors.kWhite,
                        child: Icon(
                          Icons.favorite,
                          color: KColors.kRed,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              heightBox(.02),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: KColors.kTextColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(kWidth(.02)),
                    ),
                    padding: EdgeInsets.all(kWidth(.03)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/wifi-square.png",
                          height: kHeight(.025),
                        ),
                        widthBox(.02),
                        CustomText(
                            text: "Free Wifi",
                            textStyle: KTextStyles().normal(
                                fontSize: 12, textColor: KColors.kTextColor))
                      ],
                    ),
                  ),
                  widthBox(.02),
                  Container(
                    decoration: BoxDecoration(
                      color: KColors.kTextColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(kWidth(.02)),
                    ),
                    padding: EdgeInsets.all(kWidth(.03)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/coffee.png",
                          height: kHeight(.025),
                        ),
                        widthBox(.02),
                        CustomText(
                            text: "Free Breakfast",
                            textStyle: KTextStyles().normal(
                                fontSize: 12, textColor: KColors.kTextColor))
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: KColors.kTextColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(kWidth(.02)),
                    ),
                    padding: EdgeInsets.all(kWidth(.03)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/favourite.png",
                          height: kHeight(.025),
                        ),
                        widthBox(.02),
                        CustomText(
                            text: "5.0",
                            textStyle: KTextStyles().normal(
                                fontSize: 12, textColor: KColors.kTextColor))
                      ],
                    ),
                  ),
                ],
              ),
              heightBox(.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: "The Aston Villa",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, fontWeight: FontWeight.bold)),
                  CustomRichText(
                      focusedFontSize: 16,
                      normalFontSize: 16,
                      focusPosition: FocusPosition.start,
                      normalColor: KColors.kTextColor.withOpacity(.5),
                      focusedColor: KColors.kPrimary,
                      normalText: " /night",
                      focusedText: "\$200.7")
                ],
              ),
              heightBox(.02),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: KColors.kPrimary,
                  ),
                  widthBox(.02),
                  CustomText(
                      text: "Alice Springs NT 0870, Australia",
                      textStyle: KTextStyles().normal(
                        fontSize: 12,
                      )),
                ],
              ),
              heightBox(.02),
              CustomText(
                  text: "Description",
                  textStyle: KTextStyles()
                      .normal(fontSize: 14, fontWeight: FontWeight.bold)),
              heightBox(.01),
              CustomRichText(
                  maxLines: 3,
                  focusedFontSize: 12,
                  normalFontSize: 12,
                  focusPosition: FocusPosition.end,
                  normalColor: KColors.kTextColor.withOpacity(.5),
                  focusedColor: KColors.kPrimary,
                  normalText:
                      "Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming ",
                  focusedText: "Read More. . ."),
              heightBox(.02),
              CustomText(
                  text: "Preview",
                  textStyle: KTextStyles()
                      .normal(fontSize: 14, fontWeight: FontWeight.bold)),
              heightBox(.02),
              SizedBox(
                height: kHeight(.1),
                width: kWidth(.9),
                child: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(kWidth(.04)),
                        child: Image.asset(
                          "assets/images/hotelpic.png",
                          height: kHeight(.08),
                          width: kWidth(.27),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => widthBox(.04),
                    itemCount: 3),
              ),
              heightBox(.02),
              PrimaryButton(
                width: .9,
                text: "Book Now",
                function: () {
                  Get.toNamed("/bookingsummary");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
