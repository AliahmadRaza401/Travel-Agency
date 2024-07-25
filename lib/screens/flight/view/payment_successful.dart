import 'package:travel_agency/widgets/widgets_imports.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

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
              "assets/images/success.png",
              height: kHeight(.2),
            ),
            heightBox(.02),
            CustomText(
                text: "Ticket Confirmed",
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
                      "Thank you for your order. You will receive email confirmation shortly",
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
              text: "See Details",
              function: () {
                Get.toNamed("/transaction");
              },
            )
          ],
        ),
      ),
    );
  }
}
