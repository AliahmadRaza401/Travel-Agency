import 'package:travel_agency/widgets/widgets_imports.dart';

class FlightBookingDetail extends StatelessWidget {
  const FlightBookingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(.06),
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                heightBox(.02),
                CustomText(
                    text: "Search Flights",
                    textStyle: KTextStyles().normal(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        textColor: KColors.kBlue)),
                heightBox(.02),
                CustomText(
                    text: "Contact Details",
                    textStyle: KTextStyles().normal(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: KColors.kBlue)),
                heightBox(.005),
                CustomText(
                    text: "(For E-Ticket/Voucher)",
                    textStyle: KTextStyles().normal(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        textColor: KColors.kTextColor.withOpacity(.5))),
                heightBox(.02),
                Container(
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                      color: KColors.kWhite,
                      border:
                          Border.all(color: KColors.kTextColor.withOpacity(.2)),
                      borderRadius: BorderRadius.circular(kWidth(.02))),
                  padding: EdgeInsets.all(kWidth(.04)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: kHeight(.025),
                            backgroundColor: KColors.kTextColor.withOpacity(.2),
                          ),
                          widthBox(.04),
                          CustomText(
                              text: "Matt Murdock",
                              textStyle: KTextStyles().normal(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  textColor: KColors.kBlue)),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("contactdetails");
                            },
                            child: CustomText(
                                text: "Edit",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    textColor: KColors.kPrimary)),
                          ),
                        ],
                      ),
                      heightBox(.02),
                      Container(
                        height: kHeight(.1),
                        width: context.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kWidth(.02)),
                            border: Border.all(
                                color: KColors.kTextColor.withOpacity(.2))),
                        padding: EdgeInsets.all(kWidth(.04)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.mail,
                                  color: KColors.kPrimary,
                                ),
                                widthBox(.04),
                                CustomText(
                                    text: "imnotdaredevil@mail.com",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 12,
                                        textColor:
                                            KColors.kTextColor.withOpacity(.5)))
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  color: KColors.kPrimary,
                                ),
                                widthBox(.04),
                                CustomText(
                                    text: "+628123223922",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 12,
                                        textColor:
                                            KColors.kTextColor.withOpacity(.5)))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                heightBox(.02),
                CustomText(
                    text: "Passenger Info",
                    textStyle: KTextStyles().normal(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: KColors.kBlue)),
                heightBox(.01),
                Container(
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kWidth(.02)),
                      border: Border.all(
                          color: KColors.kTextColor.withOpacity(.2))),
                  padding: EdgeInsets.all(kWidth(.04)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: "Same As Contact Details",
                          textStyle: KTextStyles().normal(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              textColor: KColors.kBlue)),
                      Switch(
                        trackColor:
                            const WidgetStatePropertyAll(KColors.kPrimary),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: true,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
                heightBox(.01),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/passengerinfo");
                  },
                  child: Container(
                    width: kWidth(.9),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kWidth(.02)),
                        border: Border.all(
                            color: KColors.kTextColor.withOpacity(.2))),
                    padding: EdgeInsets.all(kWidth(.04)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: "Selena Kayle",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                textColor: KColors.kBlue)),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: KColors.kTextColor.withOpacity(.5),
                        )
                      ],
                    ),
                  ),
                ),
                heightBox(.02),
                CustomText(
                    text: "Facility",
                    textStyle: KTextStyles().normal(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: KColors.kBlue)),
                heightBox(.02),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(Container(
                      height: kHeight(.45),
                      width: context.width,
                      decoration: BoxDecoration(
                          color: KColors.kWhite,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(kWidth(.08)))),
                      padding: EdgeInsets.all(kWidth(.04)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Divider(
                              thickness: 1,
                              color: KColors.kTextColor.withOpacity(.2),
                              indent: kWidth(.3),
                              endIndent: kWidth(.3),
                            ),
                          ),
                          heightBox(.01),
                          CustomText(
                              text: "Add Baggage",
                              textStyle: KTextStyles().normal(
                                  fontSize: 24,
                                  textColor: KColors.kBlue,
                                  fontWeight: FontWeight.bold)),
                          heightBox(.02),
                          CustomText(
                              text: "1. Matt Murdock",
                              textStyle: KTextStyles().normal(
                                fontSize: 14,
                                textColor: KColors.kBlue,
                              )),
                          heightBox(.01),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WeightCategory(title: "0 KG", subtitle: "Free"),
                              WeightCategory(
                                  title: "5 KG", subtitle: "Rp 210.000"),
                              WeightCategory(
                                  title: "10 KG", subtitle: "Rp 510.000"),
                            ],
                          ),
                          heightBox(.02),
                          Container(
                            width: kWidth(.9),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: KColors.kTextColor.withOpacity(.2),
                              ),
                              borderRadius: BorderRadius.circular(kWidth(.02)),
                              color: KColors.kWhite,
                            ),
                            padding: EdgeInsets.all(kWidth(.02)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                        text: "1. Matt Murdock",
                                        textStyle: KTextStyles().normal(
                                          fontSize: 12,
                                          textColor: KColors.kTextColor
                                              .withOpacity(.5),
                                        )),
                                    CustomText(
                                        text: "Rp. 210.000",
                                        textStyle: KTextStyles().normal(
                                          fontSize: 12,
                                          textColor: KColors.kTextColor
                                              .withOpacity(.5),
                                        )),
                                  ],
                                ),
                                heightBox(.005),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                        text: "Total",
                                        textStyle: KTextStyles().normal(
                                          fontSize: 12,
                                          textColor: KColors.kTextColor
                                              .withOpacity(.5),
                                        )),
                                    CustomText(
                                        text: "Rp. 210.000",
                                        textStyle: KTextStyles().normal(
                                            fontSize: 12,
                                            textColor: KColors.kBlack,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconTextButton(
                            bgcolor: KColors.kWhite,
                            textcolor: KColors.kWhite,
                            iconcolor: KColors.kPrimary,
                            borderRadius: .03,
                            width: .9,
                            text: "Add Baggage",
                            icon: Icons.add,
                            function: () {},
                          ),
                          heightBox(.02),
                        ],
                      ),
                    ));
                  },
                  child: Container(
                    width: kWidth(.9),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kWidth(.02)),
                        border: Border.all(
                            color: KColors.kTextColor.withOpacity(.2))),
                    padding: EdgeInsets.all(kWidth(.04)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: "Baggage",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    textColor: KColors.kBlue)),
                            CustomText(
                                text: "Add extra baggage",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    textColor:
                                        KColors.kTextColor.withOpacity(.5))),
                          ],
                        ),
                        const Spacer(),
                        Icon(
                          Icons.add,
                          color: KColors.kTextColor.withOpacity(.5),
                        )
                      ],
                    ),
                  ),
                ),
                heightBox(.02),
                CustomText(
                    text: "Extra Protection",
                    textStyle: KTextStyles().normal(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: KColors.kBlue)),
                heightBox(.02),
                Container(
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kWidth(.02)),
                      border: Border.all(
                          color: KColors.kTextColor.withOpacity(.2))),
                  padding: EdgeInsets.all(kWidth(.04)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: kWidth(.8),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.verified_user_rounded,
                                  color: KColors.kPrimary,
                                ),
                                widthBox(.04),
                                CustomText(
                                    text: "Travel Insurance",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        textColor: KColors.kBlue)),
                                const Spacer(),
                                CustomText(
                                    text: "\$125",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        textColor: KColors.kBlue)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      heightBox(.005),
                      Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: KColors.kPrimary,
                          ),
                          widthBox(.04),
                          CustomText(
                              text: "Coverage for Accidents up to \$10000",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12,
                                  textColor:
                                      KColors.kTextColor.withOpacity(.5)))
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: KColors.kPrimary,
                          ),
                          widthBox(.04),
                          Expanded(
                            child: CustomText(
                                alignText: TextAlign.left,
                                maxLines: 2,
                                text:
                                    "Coverage for trip cancellation by passengers up to \$1250",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12,
                                    textColor:
                                        KColors.kTextColor.withOpacity(.5))),
                          ),
                        ],
                      ),
                      heightBox(.01),
                      IconTextButton(
                        height: .06,
                        borderRadius: .03,
                        width: .9,
                        color: KColors.kTextColor.withOpacity(.2),
                        text: "Add Insurance",
                        icon: Icons.add,
                        function: () {},
                      ),
                    ],
                  ),
                ),
                heightBox(.02),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                                text: "Subtotal",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12,
                                    textColor: KColors.kTextColor)),
                            const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: KColors.kPrimary,
                            )
                          ],
                        ),
                        CustomText(
                            text: "\$132",
                            textStyle: KTextStyles().normal(
                                fontSize: 24,
                                textColor: KColors.kBlue,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    const Spacer(),
                    IconTextButton2(
                      height: .06,
                      borderRadius: .03,
                      text: "Select Seat",
                      icon: Icons.check,
                      function: () {
                        Get.toNamed("/paymentdetails");
                      },
                    )
                  ],
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

class WeightCategory extends StatelessWidget {
  final String title, subtitle;
  const WeightCategory({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.27),
      decoration: BoxDecoration(
        border: Border.all(
          color: KColors.kTextColor.withOpacity(.2),
        ),
        borderRadius: BorderRadius.circular(kWidth(.02)),
        color: KColors.kWhite,
      ),
      padding: EdgeInsets.all(kWidth(.02)),
      child: Column(
        children: [
          CustomText(
              text: title,
              textStyle: KTextStyles().normal(
                  fontSize: 24,
                  textColor: KColors.kBlue,
                  fontWeight: FontWeight.bold)),
          CustomText(
              text: subtitle,
              textStyle: KTextStyles().normal(
                fontSize: 12,
                textColor: KColors.kTextColor.withOpacity(.5),
              ))
        ],
      ),
    );
  }
}
