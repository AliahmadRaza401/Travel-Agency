import 'package:dotted_line/dotted_line.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class SearchFlights extends StatelessWidget {
  const SearchFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kPrimary,
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            children: [
              heightBox(.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    color: KColors.kWhite,
                  ),
                  CustomText(
                      text: "Search Flights",
                      textStyle: KTextStyles()
                          .normal(fontSize: 20, textColor: KColors.kWhite)),
                  const Icon(null),
                ],
              ),
              heightBox(.04),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return const Center(child: TicketBox());
                  },
                  separatorBuilder: (context, index) => heightBox(.02),
                  itemCount: 2),
            ],
          ),
        ),
      ),
    );
  }
}

class TicketBox extends StatelessWidget {
  const TicketBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/flightbookingdetails");
      },
      child: TicketWidget(
        margin: const EdgeInsets.only(bottom: 70),
        width: kWidth(.8),
        height: kHeight(.28),
        isCornerRounded: true,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "LGA",
                    textStyle: KTextStyles()
                        .normal(fontSize: 20, textColor: KColors.kBlue)),
                Image.asset(
                  "assets/images/tripflight.png",
                  width: kWidth(.4),
                ),
                CustomText(
                    text: "DAD",
                    textStyle: KTextStyles()
                        .normal(fontSize: 20, textColor: KColors.kBlue)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "New York",
                    textStyle: KTextStyles()
                        .normal(fontSize: 12, textColor: KColors.kTextColor)),
                CustomText(
                    text: "23:00 hours",
                    textStyle: KTextStyles().normal(
                        fontSize: 12,
                        textColor: KColors.kBlue,
                        fontWeight: FontWeight.w600)),
                CustomText(
                    text: "Da Nang",
                    textStyle: KTextStyles()
                        .normal(fontSize: 12, textColor: KColors.kTextColor)),
              ],
            ),
            heightBox(.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "8:00 AM",
                    textStyle: KTextStyles().normal(
                        fontSize: 16,
                        textColor: KColors.kBlue,
                        fontWeight: FontWeight.bold)),
                CustomText(
                    text: "7:00 AM",
                    textStyle: KTextStyles().normal(
                        fontSize: 16,
                        textColor: KColors.kBlue,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: "August 28, 2021",
                    textStyle: KTextStyles()
                        .normal(fontSize: 12, textColor: KColors.kTextColor)),
                CustomText(
                    text: "August 29, 2021",
                    textStyle: KTextStyles()
                        .normal(fontSize: 12, textColor: KColors.kTextColor)),
              ],
            ),
            heightBox(.04),
            DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: KColors.kTextColor.withOpacity(.5),
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
            heightBox(.02),
            Row(
              children: [
                Image.asset(
                  "assets/images/emirates.png",
                  height: kHeight(.04),
                ),
                widthBox(.02),
                CustomText(
                    text: "Qatar Airway",
                    textStyle: KTextStyles()
                        .normal(fontSize: 12, textColor: KColors.kTextColor)),
                const Spacer(),
                CustomText(
                    text: "\$ 340",
                    textStyle: KTextStyles().normal(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: KColors.kBlue))
              ],
            )
          ],
        ),
      ),
    );
  }
}
