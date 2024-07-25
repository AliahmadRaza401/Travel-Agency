import 'package:pinput/pinput.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class Passcode extends StatelessWidget {
  Passcode({super.key});
  final TextEditingController pinController = TextEditingController();
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
                  text: "Passcode",
                  textStyle: KTextStyles().normal(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kBlue)),
              heightBox(.01),
              CustomText(
                  text: "Enter Your Passcode to Proceed the Payment",
                  textStyle: KTextStyles().normal(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kTextColor.withOpacity(.5))),
              heightBox(.01),
              CustomText(
                  text: "Forgot Password ?",
                  textStyle: KTextStyles().normal(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kPrimary)),
              heightBox(.02),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kWidth(.05),
                ),
                child: Container(
                  width: kWidth(.9),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Pinput(
                    keyboardType: TextInputType.visiblePassword,
                    autofocus: true,
                    length: 6,
                    obscureText: true,
                    controller: pinController,
                    defaultPinTheme: PinTheme(
                      width: kWidth(.2),
                      height: kWidth(.12),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: KColors.kBlack,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        color: KColors.kTextColor.withOpacity(.1),
                      ),
                    ),
                  ),
                ),
              ),
              heightBox(.04),
              PrimaryButton(
                width: .9,
                text: "Enter",
                function: () {
                  Get.toNamed("/paymentsuccessful");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
