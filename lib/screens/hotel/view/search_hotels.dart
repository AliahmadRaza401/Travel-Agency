import 'package:cupertino_range_slider_improved/cupertino_range_slider.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class SearchHotels extends StatelessWidget {
  SearchHotels({super.key});
  final TextEditingController searchController = TextEditingController();
  final List Ratingbox = [
    {"title": "1"},
    {"title": "2"},
    {"title": "3"},
    {"title": "4"},
    {"title": "5"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Padding(
          padding: EdgeInsets.only(left: kWidth(.04)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(.06),
                CustomText(
                    text: "Location",
                    textStyle: KTextStyles().normal(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kTextColor.withOpacity(.5),
                    )),
                CustomText(
                    text: "Bali, Indonesia",
                    textStyle: KTextStyles().normal(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        textColor: KColors.kPrimary)),
                heightBox(.01),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: KColors.kPrimary.withOpacity(.2),
                        borderRadius: BorderRadius.circular(kWidth(.02)),
                      ),
                      padding: EdgeInsets.all(kWidth(.03)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: KColors.kTextColor.withOpacity(.5),
                            size: kHeight(.02),
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "24 OCT-26 OCT",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12, textColor: KColors.kPrimary))
                        ],
                      ),
                    ),
                    widthBox(.04),
                    Container(
                      decoration: BoxDecoration(
                        color: KColors.kPrimary.withOpacity(.2),
                        borderRadius: BorderRadius.circular(kWidth(.02)),
                      ),
                      padding: EdgeInsets.all(kWidth(.03)),
                      child: CustomText(
                          text: "3 Guests",
                          textStyle: KTextStyles().normal(
                              fontSize: 12, textColor: KColors.kPrimary)),
                    ),
                  ],
                ),
                heightBox(.04),
                Container(
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: KColors.kGrey.withOpacity(.2),
                            blurRadius: 5,
                            offset: const Offset(1, 1))
                      ],
                      color: KColors.kWhite,
                      borderRadius: BorderRadius.circular(kWidth(.04))),
                  child: TextField(
                    cursorErrorColor: KColors.kGrey,
                    controller: searchController,
                    style: const TextStyle(color: KColors.kGrey),
                    cursorColor: KColors.kGrey,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: kHeight(.015)),
                        focusColor: KColors.kGrey,
                        hintText: "Search",
                        prefixIcon: Image.asset(
                          "assets/images/search.png",
                          color: KColors.kBlack,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            Get.bottomSheet(
                                isScrollControlled: true,
                                Container(
                                  height: kHeight(.6),
                                  width: context.width,
                                  decoration: BoxDecoration(
                                      color: KColors.kWhite,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(kWidth(.08)))),
                                  padding: EdgeInsets.all(kWidth(.04)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      heightBox(.02),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                              text: "Cancel",
                                              textStyle: KTextStyles().normal(
                                                fontSize: 14,
                                              )),
                                          CustomText(
                                              text: "Filter",
                                              textStyle: KTextStyles().normal(
                                                  fontSize: 20,
                                                  textColor: KColors.kPrimary,
                                                  fontWeight: FontWeight.bold)),
                                          CustomText(
                                              text: "Reset",
                                              textStyle: KTextStyles().normal(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      heightBox(.02),
                                      CustomText(
                                          text: "Sort By",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      heightBox(.01),
                                      Container(
                                        width: kWidth(.85),
                                        decoration: BoxDecoration(
                                            color: KColors.kWhite,
                                            border: Border.all(
                                                color: KColors.kTextColor),
                                            borderRadius: BorderRadius.circular(
                                                kWidth(.02))),
                                        padding: EdgeInsets.all(kWidth(.02)),
                                        child: Row(
                                          children: [
                                            CustomText(
                                                text: "\$ - \$\$",
                                                textStyle: KTextStyles().normal(
                                                    fontSize: 12,
                                                    textColor: KColors
                                                        .kTextColor
                                                        .withOpacity(.5))),
                                            widthBox(.04),
                                            CustomText(
                                                text: "Price Lower to Higher",
                                                textStyle: KTextStyles().normal(
                                                    fontSize: 15,
                                                    textColor: KColors
                                                        .kTextColor
                                                        .withOpacity(.5))),
                                            const Spacer(),
                                            const Icon(Icons.arrow_drop_down),
                                          ],
                                        ),
                                      ),
                                      heightBox(.02),
                                      CustomText(
                                          text: "Ratings",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      heightBox(.02),
                                      SizedBox(
                                        height: kHeight(.06),
                                        width: kWidth(.9),
                                        child: ListView.separated(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              return RatingBox(
                                                title: Ratingbox[index]
                                                    ["title"],
                                              );
                                            },
                                            separatorBuilder:
                                                (context, index) =>
                                                    widthBox(.02),
                                            itemCount: 5),
                                      ),
                                      heightBox(.02),
                                      CustomText(
                                          text: "Price Ranges",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      heightBox(.02),
                                      SizedBox(
                                        width: kWidth(.9),
                                        child: CupertinoRangeSlider(
                                          thumbColor: KColors.kPrimary,
                                          activeColor: KColors.kPrimary,
                                          minValue: 10,
                                          maxValue: 40,
                                          min: 1.0,
                                          max: 100.0,
                                          onMinChanged: (minVal) {},
                                          onMaxChanged: (maxVal) {},
                                        ),
                                      ),
                                      heightBox(.02),
                                      CustomText(
                                          text: "\$90-\$350",
                                          textStyle: KTextStyles().normal(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      const Spacer(),
                                      PrimaryButton(
                                        width: .9,
                                        text: "Apply",
                                        function: () {},
                                      ),
                                      heightBox(.02),
                                    ],
                                  ),
                                ));
                          },
                          child: Image.asset(
                            "assets/images/filter.png",
                          ),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                heightBox(.04),
                CustomText(
                    text: "Recommended Hotels",
                    textStyle: KTextStyles().normal(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                heightBox(.02),
                SizedBox(
                  height: kHeight(.31),
                  width: context.width,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Get.toNamed("/hoteldetail");
                            },
                            child: const RecommendHotelBox());
                      },
                      separatorBuilder: (context, index) => widthBox(.06),
                      itemCount: 4),
                ),
                heightBox(.02),
                CustomText(
                    text: "Business Accommodates",
                    textStyle: KTextStyles().normal(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                heightBox(.02),
                SizedBox(
                  height: kHeight(.31),
                  width: context.width,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const BusinessAccommodateBox();
                      },
                      separatorBuilder: (context, index) => widthBox(.06),
                      itemCount: 4),
                ),
                heightBox(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RatingBox extends StatelessWidget {
  final String title;
  const RatingBox({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.16),
      decoration: BoxDecoration(
        color: KColors.kWhite,
        border: Border.all(color: KColors.kTextColor.withOpacity(.5)),
        borderRadius: BorderRadius.circular(kWidth(.04)),
      ),
      padding: EdgeInsets.all(kWidth(.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
              text: title,
              textStyle: KTextStyles().normal(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  textColor: KColors.kTextColor)),
          widthBox(.02),
          Icon(
            Icons.star,
            size: kHeight(.02),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class RecommendHotelBox extends StatelessWidget {
  const RecommendHotelBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.5),
      padding: EdgeInsets.all(kWidth(.025)),
      decoration: BoxDecoration(
          color: KColors.kGrey.withOpacity(.1),
          borderRadius: BorderRadius.circular(kWidth(.02))),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/hotelpic.png",
            height: kHeight(.15),
            width: context.width,
            fit: BoxFit.fill,
          ),
          heightBox(.01),
          Row(
            children: [
              Container(
                  width: kWidth(.15),
                  decoration: BoxDecoration(
                    color: KColors.kPrimary.withOpacity(.2),
                    borderRadius: BorderRadius.circular(kWidth(.02)),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kWidth(.02)),
                  child: CustomText(
                      text: "10% Off",
                      textStyle: KTextStyles()
                          .normal(fontSize: 7, textColor: KColors.kPrimary))),
              widthBox(.01),
              Container(
                width: kWidth(.15),
                decoration: BoxDecoration(
                  color: KColors.kPrimary.withOpacity(.2),
                  borderRadius: BorderRadius.circular(kWidth(.1)),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.all(kWidth(.02)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: KColors.kPrimary,
                      size: kHeight(.015),
                    ),
                    widthBox(.01),
                    CustomText(
                        text: "4.5",
                        textStyle: KTextStyles()
                            .normal(fontSize: 7, textColor: KColors.kPrimary)),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.favorite_outline,
                color: KColors.kPrimary,
              )
            ],
          ),
          heightBox(.01),
          CustomText(
              text: "AYANA Resort",
              textStyle: KTextStyles().normal(fontWeight: FontWeight.bold)),
          heightBox(.01),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: kHeight(.015),
              ),
              CustomText(
                  text: "Bali, Indonesia",
                  textStyle: KTextStyles().normal(
                      fontSize: 10,
                      textColor: KColors.kTextColor.withOpacity(.5))),
            ],
          ),
          heightBox(.01),
          const CustomRichText(
              focusedColor: KColors.kPrimary,
              focusedFontSize: 10,
              normalFontSize: 10,
              focusPosition: FocusPosition.start,
              normalText: " /night",
              focusedText: "\$200 - \$500 USD ")
        ],
      ),
    );
  }
}

class BusinessAccommodateBox extends StatelessWidget {
  const BusinessAccommodateBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.5),
      padding: EdgeInsets.all(kWidth(.025)),
      decoration: BoxDecoration(
          color: KColors.kGrey.withOpacity(.1),
          borderRadius: BorderRadius.circular(kWidth(.02))),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/hotelpic.png",
            height: kHeight(.15),
            width: context.width,
            fit: BoxFit.fill,
          ),
          heightBox(.01),
          Row(
            children: [
              Container(
                  width: kWidth(.15),
                  decoration: BoxDecoration(
                    color: KColors.kPrimary.withOpacity(.2),
                    borderRadius: BorderRadius.circular(kWidth(.02)),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kWidth(.02)),
                  child: CustomText(
                      text: "10% Off",
                      textStyle: KTextStyles()
                          .normal(fontSize: 7, textColor: KColors.kPrimary))),
              widthBox(.01),
              Container(
                width: kWidth(.15),
                decoration: BoxDecoration(
                  color: KColors.kPrimary.withOpacity(.2),
                  borderRadius: BorderRadius.circular(kWidth(.1)),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.all(kWidth(.02)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: KColors.kPrimary,
                      size: kHeight(.015),
                    ),
                    widthBox(.01),
                    CustomText(
                        text: "4.5",
                        textStyle: KTextStyles()
                            .normal(fontSize: 7, textColor: KColors.kPrimary)),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.favorite_outline,
                color: KColors.kPrimary,
              )
            ],
          ),
          heightBox(.01),
          CustomText(
              text: "AYANA Resort",
              textStyle: KTextStyles().normal(fontWeight: FontWeight.bold)),
          heightBox(.01),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: kHeight(.015),
              ),
              CustomText(
                  text: "Bali, Indonesia",
                  textStyle: KTextStyles().normal(
                      fontSize: 10,
                      textColor: KColors.kTextColor.withOpacity(.5))),
            ],
          ),
          heightBox(.01),
          const CustomRichText(
              focusedColor: KColors.kPrimary,
              focusedFontSize: 10,
              normalFontSize: 10,
              focusPosition: FocusPosition.start,
              normalText: " /night",
              focusedText: "\$200 - \$500 USD ")
        ],
      ),
    );
  }
}
