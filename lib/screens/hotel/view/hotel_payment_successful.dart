import 'package:travel_agency/widgets/widgets_imports.dart';

class HotelPaymentSuccessful extends StatelessWidget {
  const HotelPaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kPrimary,
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/flightbookinganime.png",
              height: kHeight(.3),
            ),
            heightBox(.02),
            CustomText(
                text: "Congratulations",
                textStyle: KTextStyles().normal(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    textColor: KColors.kWhite)),
            heightBox(.01),
            SizedBox(
              width: kWidth(.8),
              child: CustomText(
                  maxLines: 2,
                  text:
                      "Your hotel stay is secured. Counting down to your dream vacation!",
                  textStyle: KTextStyles().normal(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kWhite)),
            ),
            heightBox(.04),
            PrimaryButton(
              textcolor: KColors.kBlack,
              width: .9,
              color: KColors.kWhite,
              text: "Go to Home",
              function: () {
                Get.toNamed("/");
              },
            )
          ],
        ),
      ),
    );
  }
}
