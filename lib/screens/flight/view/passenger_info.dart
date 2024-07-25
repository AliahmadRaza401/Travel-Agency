import 'package:travel_agency/screens/flight/controller/passenger_info_controller.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class PassengerInfo extends StatelessWidget {
  PassengerInfo({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final PassengerInfoController passengerInfoController =
      Get.put(PassengerInfoController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: context.height,
            width: kWidth(.9),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightBox(.06),
                  const Icon(Icons.arrow_back_ios),
                  heightBox(.02),
                  CustomText(
                      text: "Passenger Info",
                      textStyle: KTextStyles().normal(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          textColor: KColors.kBlue)),
                  heightBox(.02),
                  Row(
                    children: [
                      Obx(() {
                        return Radio(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: KColors.kPrimary,
                          fillColor:
                              const WidgetStatePropertyAll(KColors.kPrimary),
                          value: 1,
                          groupValue:
                              passengerInfoController.selectedOption.value,
                          onChanged: (value) {
                            passengerInfoController.setSelectedOption(value!);
                          },
                        );
                      }),
                      CustomText(
                          text: "Male",
                          textStyle: KTextStyles()
                              .normal(fontSize: 14, textColor: KColors.kBlue)),
                      widthBox(.04),
                      Obx(() {
                        return Radio(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: KColors.kPrimary,
                          fillColor:
                              const WidgetStatePropertyAll(KColors.kPrimary),
                          value: 2,
                          groupValue:
                              passengerInfoController.selectedOption.value,
                          onChanged: (value) {
                            passengerInfoController.setSelectedOption(value!);
                          },
                        );
                      }),
                      CustomText(
                          text: "Female",
                          textStyle: KTextStyles()
                              .normal(fontSize: 14, textColor: KColors.kBlue)),
                    ],
                  ),
                  heightBox(.02),
                  CustomTextField(
                      themeColor: KColors.kTextColor,
                      hasPrefix: false,
                      hasSuffix: false,
                      controller: nameController,
                      label: "Full name",
                      hintText: "Cameron Williamson",
                      keyboardType: TextInputType.name,
                      suffixIcon: const Icon(null),
                      prefixIcon: const Icon(null)),
                  heightBox(.02),
                  CustomTextField(
                      themeColor: KColors.kTextColor,
                      hasPrefix: false,
                      hasSuffix: false,
                      controller: emailController,
                      label: "Email Address",
                      hintText: "williamson@gmail.com",
                      keyboardType: TextInputType.emailAddress,
                      suffixIcon: const Icon(null),
                      prefixIcon: const Icon(null)),
                  heightBox(.02),
                  CustomTextField(
                      themeColor: KColors.kTextColor,
                      hasPrefix: false,
                      hasSuffix: false,
                      controller: idController,
                      label: "ID card number",
                      hintText: "12867358234523",
                      keyboardType: TextInputType.number,
                      suffixIcon: const Icon(null),
                      prefixIcon: const Icon(null)),
                  heightBox(.01),
                  CustomText(
                      text:
                          "This contact is for e-ticket and refund/rescheduling",
                      textStyle: KTextStyles().normal(
                        fontSize: 12,
                        textColor: KColors.kTextColor.withOpacity(.5),
                      )),
                  heightBox(.04),
                  PrimaryButton(
                    width: .9,
                    text: "Save Changes",
                    function: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
