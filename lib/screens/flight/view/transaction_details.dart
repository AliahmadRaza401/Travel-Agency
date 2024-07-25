import 'package:travel_agency/widgets/widgets_imports.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

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
              heightBox(.06),
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              heightBox(.04),
              CustomText(
                  text: "Transaction Details",
                  textStyle: KTextStyles().normal(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kBlue)),
              heightBox(.04),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kWidth(.02)),
                    border: Border.all(
                      color: KColors.kTextColor.withOpacity(.2),
                    )),
                padding: EdgeInsets.all(kWidth(.02)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/airlinelogo.png",
                          height: kHeight(.02),
                        ),
                        widthBox(.02),
                        CustomText(
                            text: "Southwest Airlines",
                            textStyle: KTextStyles().normal(
                                fontSize: 14,
                                textColor: KColors.kBlue,
                                fontWeight: FontWeight.bold)),
                        const Spacer(),
                        CustomText(
                            text: "Executive",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                textColor: KColors.kTextColor.withOpacity(.5),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    heightBox(.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: "GTH",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      textColor: KColors.kBlue)),
                              CustomText(
                                  text: "14.00",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 12,
                                      textColor:
                                          KColors.kTextColor.withOpacity(.5))),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/airplane.png",
                          height: kHeight(.05),
                        ),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomText(
                                  text: "KHQ",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      textColor: KColors.kBlue)),
                              CustomText(
                                  text: "07.15",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 12,
                                      textColor:
                                          KColors.kTextColor.withOpacity(.5))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    heightBox(.02),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: KColors.kPrimary,
                          size: kHeight(.02),
                        ),
                        widthBox(.01),
                        CustomText(
                            text: "2 Person",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                textColor: KColors.kBlue)),
                        widthBox(.04),
                        Icon(
                          Icons.electric_bolt_outlined,
                          color: KColors.kPrimary,
                          size: kHeight(.02),
                        ),
                        widthBox(.01),
                        CustomText(
                            text: "Premium",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                textColor: KColors.kBlue)),
                        const Spacer(),
                        CustomRichText(
                            normalColor: KColors.kBlack,
                            normalFontSize: 12,
                            focusedColor: KColors.kTextColor.withOpacity(.5),
                            focusedFontSize: 12,
                            normalText: "IDR 350.000",
                            focusedText: " /Pax")
                      ],
                    ),
                    heightBox(.02),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: kHeight(.015),
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
                          onTap: () {},
                          child: CustomText(
                              text: "Edit",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  textColor: KColors.kPrimary)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              heightBox(.02),
              const DetailsTile(
                title: "Status",
                subtitle: "Success",
                color: KColors.kPrimary,
              ),
              heightBox(.02),
              const DetailsTile(
                title: "Invoice",
                subtitle: "INV23124131332",
              ),
              heightBox(.02),
              const DetailsTile(
                title: "Transaction Date",
                subtitle: "Wed, 18 Oct 2022",
              ),
              heightBox(.02),
              const DetailsTile(
                title: "Payment Method",
                subtitle: "Paytren",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: "1. Matt Murdock",
                            textStyle: KTextStyles().normal(
                              fontSize: 12,
                              textColor: KColors.kTextColor.withOpacity(.5),
                            )),
                        CustomText(
                            text: "Rp. 210.000",
                            textStyle: KTextStyles().normal(
                              fontSize: 12,
                              textColor: KColors.kTextColor.withOpacity(.5),
                            )),
                      ],
                    ),
                    heightBox(.005),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: "Total",
                            textStyle: KTextStyles().normal(
                              fontSize: 12,
                              textColor: KColors.kTextColor.withOpacity(.5),
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
              heightBox(.02),
              IconTextButton2(
                borderRadius: .03,
                textcolor: KColors.kRed,
                iconcolor: KColors.kWhite,
                bgcolor: KColors.kRed,
                color: KColors.kRed.withOpacity(.1),
                width: .9,
                text: "Refund or Reschedule Ticket",
                icon: Icons.arrow_forward,
                function: () {},
              ),
              const Spacer(),
              PrimaryButton(
                width: .9,
                text: "Enter",
                function: () {},
              ),
              heightBox(.02),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsTile extends StatelessWidget {
  final String title, subtitle;
  final Color color;
  const DetailsTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.color = KColors.kBlack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
            text: title,
            textStyle: KTextStyles().normal(
                fontSize: 12,
                textColor: KColors.kTextColor,
                fontWeight: FontWeight.bold)),
        CustomText(
            text: subtitle,
            textStyle: KTextStyles().normal(
                fontSize: 12, textColor: color, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
