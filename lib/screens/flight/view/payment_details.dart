import 'package:travel_agency/screens/flight/controller/payment_details_controller.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class PaymentDetails extends StatelessWidget {
  PaymentDetails({super.key});
  final PaymentDetailsController paymentDetailsController =
      Get.put(PaymentDetailsController());

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
              heightBox(.02),
              CustomText(
                  text: "Digital payment method(s)",
                  textStyle: KTextStyles().normal(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kBlue)),
              heightBox(.005),
              CustomText(
                  text: "Swipe left to set your default method",
                  textStyle: KTextStyles().normal(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kTextColor.withOpacity(.5))),
              heightBox(.04),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/mastercard.png",
                    height: kHeight(.04),
                  ),
                  widthBox(.04),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "***8976",
                          textStyle: KTextStyles().normal(
                              fontSize: 16,
                              textColor: KColors.kBlue,
                              fontWeight: FontWeight.bold)),
                      heightBox(.01),
                      Row(
                        children: [
                          const Icon(
                            Icons.verified,
                            color: Colors.brown,
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "Get 10\$ Discount",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12,
                                  textColor:
                                      KColors.kTextColor.withOpacity(.5))),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Obx(() {
                    return Radio(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      activeColor: KColors.kPrimary,
                      fillColor: const WidgetStatePropertyAll(KColors.kPrimary),
                      value: 1,
                      groupValue: paymentDetailsController.selectedOption.value,
                      onChanged: (value) {
                        paymentDetailsController.setSelectedOption(value!);
                      },
                    );
                  }),
                ],
              ),
              heightBox(.02),
              Divider(
                thickness: 1,
                color: KColors.kTextColor.withOpacity(.2),
              ),
              heightBox(.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/paypal.png",
                    height: kHeight(.04),
                  ),
                  widthBox(.04),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "***8976",
                          textStyle: KTextStyles().normal(
                              fontSize: 16,
                              textColor: KColors.kBlue,
                              fontWeight: FontWeight.bold)),
                      heightBox(.01),
                      Row(
                        children: [
                          const Icon(
                            Icons.verified,
                            color: Colors.brown,
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "Get 10\$ Discount",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12,
                                  textColor:
                                      KColors.kTextColor.withOpacity(.5))),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Obx(() {
                    return Radio(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      activeColor: KColors.kPrimary,
                      fillColor: const WidgetStatePropertyAll(KColors.kPrimary),
                      value: 2,
                      groupValue: paymentDetailsController.selectedOption.value,
                      onChanged: (value) {
                        paymentDetailsController.setSelectedOption(value!);
                      },
                    );
                  }),
                ],
              ),
              heightBox(.04),
              CustomText(
                  text: "Add methods",
                  textStyle: KTextStyles().normal(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kBlue)),
              heightBox(.04),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/creditcard.png",
                    height: kHeight(.04),
                  ),
                  widthBox(.04),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "***8976",
                          textStyle: KTextStyles().normal(
                              fontSize: 16,
                              textColor: KColors.kBlue,
                              fontWeight: FontWeight.bold)),
                      heightBox(.01),
                      CustomText(
                          text: "Visa, Mastercard, AMEX and JCB",
                          textStyle: KTextStyles().normal(
                            textColor: KColors.kTextColor,
                          )),
                      heightBox(.005),
                      Row(
                        children: [
                          const Icon(
                            Icons.verified,
                            color: Colors.brown,
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "Get 10\$ Discount",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12,
                                  textColor:
                                      KColors.kTextColor.withOpacity(.5))),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomText(
                      text: "Add",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, textColor: KColors.kPrimary))
                ],
              ),
              heightBox(.01),
              Divider(
                thickness: 1,
                color: KColors.kTextColor.withOpacity(.2),
              ),
              heightBox(.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/refund.png",
                    height: kHeight(.04),
                  ),
                  widthBox(.04),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "***8976",
                          textStyle: KTextStyles().normal(
                              fontSize: 16,
                              textColor: KColors.kBlue,
                              fontWeight: FontWeight.bold)),
                      heightBox(.01),
                      CustomText(
                          text: "Visa, Mastercard, AMEX and JCB",
                          textStyle: KTextStyles().normal(
                            textColor: KColors.kTextColor,
                          )),
                      heightBox(.005),
                      Row(
                        children: [
                          const Icon(
                            Icons.verified,
                            color: Colors.brown,
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "Get 10\$ Discount",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12,
                                  textColor:
                                      KColors.kTextColor.withOpacity(.5))),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomText(
                      text: "Add",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, textColor: KColors.kPrimary))
                ],
              ),
              const Spacer(),
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
                                  fontSize: 12, textColor: KColors.kTextColor)),
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
                    width: .65,
                    height: .06,
                    borderRadius: .03,
                    text: "Proceed the payment",
                    icon: Icons.check,
                    function: () {
                      Get.bottomSheet(Container(
                        height: kHeight(.45),
                        width: context.width,
                        decoration: BoxDecoration(
                            color: KColors.kWhite,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kWidth(.08)))),
                        padding: EdgeInsets.all(kWidth(.04)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Divider(
                              thickness: 1,
                              color: KColors.kTextColor.withOpacity(.2),
                              indent: kWidth(.3),
                              endIndent: kWidth(.3),
                            ),
                            heightBox(.01),
                            CustomText(
                                alignText: TextAlign.center,
                                maxLines: 2,
                                text:
                                    "Continue with Touch ID to Proceed the payment",
                                textStyle: KTextStyles().normal(
                                    fontSize: 24,
                                    textColor: KColors.kBlue,
                                    fontWeight: FontWeight.bold)),
                            heightBox(.04),
                            Image.asset(
                              "assets/images/fingerprint.png",
                              height: kHeight(.15),
                            ),
                            heightBox(.04),
                            PrimaryButton(
                              textcolor: KColors.kBlack,
                              height: .06,
                              color: KColors.kTextColor.withOpacity(.1),
                              width: .9,
                              text: "Use Passcode Instead",
                              function: () {
                                Get.toNamed("/passcode");
                              },
                            )
                          ],
                        ),
                      ));
                    },
                  )
                ],
              ),
              heightBox(.02),
            ],
          ),
        ),
      ),
    );
  }
}
