import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class Bookings extends StatelessWidget {
  const Bookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Bookings", actions: []),
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              children: [
                heightBox(.02),
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      return const Center(child: BookingsBox());
                    },
                    separatorBuilder: (context, index) => heightBox(.02),
                    itemCount: 3),
                heightBox(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BookingsBox extends StatelessWidget {
  const BookingsBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.9),
      decoration: BoxDecoration(
          color: KColors.kWhite,
          border: Border.all(
            color: KColors.kTextColor.withOpacity(.2),
          ),
          borderRadius: BorderRadius.circular(kWidth(.02))),
      padding: EdgeInsets.all(kWidth(.04)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: "Booking ID: 22378965",
              textStyle: KTextStyles().normal(fontWeight: FontWeight.bold)),
          heightBox(.01),
          CustomText(
              text: "Booking Date: April 26, 2023, 10:00 PM - 03:00 PM",
              textStyle: KTextStyles().normal(
                  fontSize: 12, textColor: KColors.kTextColor.withOpacity(.5))),
          heightBox(.02),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(kWidth(.02)),
                child: Image.asset(
                  "assets/images/homepic.png",
                  height: kHeight(.08),
                ),
              ),
              widthBox(.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: kHeight(.02),
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      widthBox(.01),
                      CustomText(
                          text: "4.0 (115 Reviews)",
                          textStyle: KTextStyles().normal(
                            fontSize: 11,
                          ))
                    ],
                  ),
                  heightBox(.005),
                  CustomText(
                      text: "Malon Greens",
                      textStyle:
                          KTextStyles().normal(fontWeight: FontWeight.bold)),
                  heightBox(.005),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: KColors.kBlack,
                      ),
                      CustomText(
                          text: "Mumbai, Maharashtra",
                          textStyle: KTextStyles().normal(
                              fontSize: 11, textColor: KColors.kTextColor)),
                    ],
                  )
                ],
              )
            ],
          ),
          heightBox(.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryButton(
                width: .38,
                textcolor: KColors.kBlack,
                color: KColors.kTextColor.withOpacity(.1),
                text: "Cancel",
                function: () {},
              ),
              PrimaryButton(
                width: .38,
                text: "View Details",
                function: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
